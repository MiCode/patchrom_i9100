.class Lcom/android/server/enterprise/DeviceShell;
.super Ljava/lang/Object;
.source "DeviceShell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/DeviceShell$1;,
        Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;,
        Lcom/android/server/enterprise/DeviceShell$OUTPUT;
    }
.end annotation


# static fields
.field public static final BASH_COMMANDS:[Ljava/lang/String; = null

.field private static final EXIT:Ljava/lang/String; = "exit\n"

.field private static final SU_COMMANDS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeviceShell"

.field private static final TEST_COMMANDS:[Ljava/lang/String;

.field private static final UID_PATTERN:Ljava/util/regex/Pattern;

.field private static shell:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    const-string v0, "^uid=(\\d+).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->UID_PATTERN:Ljava/util/regex/Pattern;

    .line 76
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/system/bin/su"

    aput-object v1, v0, v2

    const-string v1, "/system/xbin/su"

    aput-object v1, v0, v3

    const-string v1, "su"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->SU_COMMANDS:[Ljava/lang/String;

    .line 80
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "/system/bin/sh"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->BASH_COMMANDS:[Ljava/lang/String;

    .line 84
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "/system/bin/id"

    aput-object v1, v0, v2

    const-string v1, "/system/xbin/id"

    aput-object v1, v0, v3

    const-string v1, "id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/DeviceShell;->TEST_COMMANDS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 225
    return-void
.end method

.method private static _runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    .locals 10
    .parameter "command"
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, os:Ljava/io/DataOutputStream;
    const/4 v5, 0x0

    .line 161
    .local v5, process:Ljava/lang/Process;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 162
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    .end local v2           #os:Ljava/io/DataOutputStream;
    .local v3, os:Ljava/io/DataOutputStream;
    :try_start_1
    invoke-static {v5, p1}, Lcom/android/server/enterprise/DeviceShell;->sinkProcessOutput(Ljava/lang/Process;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    move-result-object v6

    .line 164
    .local v6, sh:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 166
    const-string v7, "exit\n"

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 168
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    .line 169
    if-eqz v6, :cond_2

    .line 170
    invoke-virtual {v6}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->getOutput()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v4

    .line 182
    .local v4, output:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 183
    :try_start_2
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 185
    :cond_0
    if-eqz v5, :cond_1

    .line 186
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 174
    .end local v4           #output:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    .line 182
    if-eqz v3, :cond_3

    .line 183
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 185
    :cond_3
    if-eqz v5, :cond_1

    .line 186
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 176
    .end local v0           #e:Ljava/lang/Exception;
    .end local v3           #os:Ljava/io/DataOutputStream;
    .end local v6           #sh:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    :catch_1
    move-exception v0

    .line 177
    .restart local v0       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, msg:Ljava/lang/String;
    const-string v7, "DeviceShell"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "runCommand error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 181
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 182
    :goto_3
    if-eqz v2, :cond_4

    .line 183
    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 185
    :cond_4
    if-eqz v5, :cond_5

    .line 186
    invoke-virtual {v5}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 181
    :cond_5
    :goto_4
    throw v7

    .line 188
    :catch_2
    move-exception v0

    .line 189
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 188
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    .restart local v6       #sh:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catch_3
    move-exception v0

    goto :goto_1

    .restart local v4       #output:Ljava/lang/String;
    :catch_4
    move-exception v0

    goto :goto_1

    .line 181
    .end local v4           #output:Ljava/lang/String;
    .end local v6           #sh:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 176
    .end local v2           #os:Ljava/io/DataOutputStream;
    .restart local v3       #os:Ljava/io/DataOutputStream;
    :catch_5
    move-exception v0

    move-object v2, v3

    .end local v3           #os:Ljava/io/DataOutputStream;
    .restart local v2       #os:Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method private static checkSu()Z
    .locals 5

    .prologue
    .line 100
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->SU_COMMANDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 101
    .local v1, command:Ljava/lang/String;
    sput-object v1, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->isRootUid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    const/4 v4, 0x1

    .line 106
    .end local v1           #command:Ljava/lang/String;
    :goto_1
    return v4

    .line 100
    .restart local v1       #command:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    .end local v1           #command:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    sput-object v4, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    .line 106
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static getProcessOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "command"

    .prologue
    .line 133
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/DeviceShell;->_runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 135
    :goto_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, ignored:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isRootUid()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, out:Ljava/lang/String;
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->TEST_COMMANDS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 113
    .local v1, command:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/enterprise/DeviceShell;->getProcessOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 117
    .end local v1           #command:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    :cond_1
    move v7, v8

    .line 128
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    :goto_1
    return v7

    .line 112
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #command:Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #len$:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    .end local v1           #command:Ljava/lang/String;
    :cond_4
    sget-object v9, Lcom/android/server/enterprise/DeviceShell;->UID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 120
    .local v5, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 121
    const-string v9, "0"

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-nez v9, :cond_2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #matcher:Ljava/util/regex/Matcher;
    :cond_5
    :goto_2
    move v7, v8

    .line 128
    goto :goto_1

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static declared-synchronized isSuAvailable()Z
    .locals 2

    .prologue
    .line 89
    const-class v1, Lcom/android/server/enterprise/DeviceShell;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    invoke-static {}, Lcom/android/server/enterprise/DeviceShell;->checkSu()Z

    .line 92
    :cond_0
    sget-object v0, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static runCommand(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"

    .prologue
    .line 141
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->BOTH:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/DeviceShell;->_runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    const/4 v1, 0x1

    .line 144
    :goto_0
    return v1

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, ignored:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static runCommandWithLog(Ljava/lang/String;)Z
    .locals 2
    .parameter "command"

    .prologue
    .line 150
    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/DeviceShell;->_runCommand(Ljava/lang/String;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    const/4 v1, 0x1

    .line 153
    :goto_0
    return v1

    .line 152
    :catch_0
    move-exception v0

    .line 153
    .local v0, ignored:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized setShell(Ljava/lang/String;)V
    .locals 2
    .parameter "shell"

    .prologue
    .line 96
    const-class v0, Lcom/android/server/enterprise/DeviceShell;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/server/enterprise/DeviceShell;->shell:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit v0

    return-void

    .line 96
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static sinkProcessOutput(Ljava/lang/Process;Lcom/android/server/enterprise/DeviceShell$OUTPUT;)Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .locals 9
    .parameter "p"
    .parameter "o"

    .prologue
    .line 195
    const/4 v5, 0x0

    .line 196
    .local v5, output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    const/4 v3, 0x0

    .line 197
    .local v3, handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    const/4 v1, 0x0

    .line 199
    .local v1, handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/DeviceShell$1;->$SwitchMap$com$android$server$enterprise$DeviceShell$OUTPUT:[I

    invoke-virtual {p1}, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 222
    :goto_0
    return-object v5

    .line 201
    :pswitch_0
    new-instance v6, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v5           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .local v6, output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_1
    invoke-virtual {v6}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V

    .line 203
    new-instance v4, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 204
    .end local v3           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .local v4, handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .end local v4           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v3       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    move-object v5, v6

    .line 205
    .end local v6           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v5       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_0

    .line 207
    :pswitch_1
    :try_start_3
    new-instance v6, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 208
    .end local v5           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v6       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_4
    invoke-virtual {v6}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V

    .line 209
    new-instance v2, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 210
    .end local v1           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .local v2, handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_5
    invoke-virtual {v2}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v1, v2

    .end local v2           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v1       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    move-object v5, v6

    .line 211
    .end local v6           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v5       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_0

    .line 213
    :pswitch_2
    :try_start_6
    new-instance v4, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 214
    .end local v3           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v4       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_7
    invoke-virtual {v4}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V

    .line 215
    new-instance v2, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;

    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v2, v7, v8}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;-><init>(Ljava/io/InputStream;Z)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 216
    .end local v1           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v2       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :try_start_8
    invoke-virtual {v2}, Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    move-object v1, v2

    .end local v2           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v1       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    move-object v3, v4

    .end local v4           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v3       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_0

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    .end local v5           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v6       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v5       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_1

    .end local v3           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .end local v5           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v4       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v6       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v3       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    move-object v5, v6

    .end local v6           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v5       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_1

    .end local v1           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .end local v5           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v2       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v6       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catch_3
    move-exception v0

    move-object v1, v2

    .end local v2           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v1       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    move-object v5, v6

    .end local v6           #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v5       #output:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_1

    .end local v3           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v4       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v3       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_1

    .end local v1           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .end local v3           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v2       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v4       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2           #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v1       #handlerErrStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    move-object v3, v4

    .end local v4           #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    .restart local v3       #handlerInputStream:Lcom/android/server/enterprise/DeviceShell$InputStreamHandler;
    goto :goto_1

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
