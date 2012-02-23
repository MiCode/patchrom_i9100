.class public Landroid/app/IrdaService;
.super Landroid/app/IIrdaService$Stub;
.source "IrdaService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IrdaService"

.field private static bEnabled:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStr:Ljava/lang/String;

.field private read_ir_send:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/IIrdaService$Stub;-><init>()V

    .line 162
    new-instance v3, Landroid/app/IrdaService$1;

    invoke-direct {v3, p0}, Landroid/app/IrdaService$1;-><init>(Landroid/app/IrdaService;)V

    iput-object v3, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    const-string v3, "IrdaService"

    const-string v4, "IrdaService : Create"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iput-object p1, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    .line 58
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z

    .line 59
    invoke-direct {p0}, Landroid/app/IrdaService;->isEnalbed()V

    .line 61
    :try_start_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v2, filter:Landroid/content/IntentFilter;
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v4, "ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 63
    .local v1, field:Ljava/lang/reflect/Field;
    const-string v3, "IrdaService"

    const-string v4, "Field ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object v3, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v1           #field:Ljava/lang/reflect/Field;
    .end local v2           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, ex:Ljava/lang/NoSuchFieldException;
    const-string v3, "IrdaService"

    const-string v4, "Field ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/app/IrdaService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/IrdaService;->isEnalbed()V

    return-void
.end method

.method private isEnalbed()V
    .locals 8

    .prologue
    .line 143
    :try_start_0
    const-class v3, Landroid/app/admin/DevicePolicyManager;

    const-string v4, "getAllowIrDA"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/ComponentName;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 144
    .local v2, method:Ljava/lang/reflect/Method;
    const-string v3, "IrdaService"

    const-string v4, "Method getAllowIrDA found"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 146
    .local v1, mDPM:Landroid/app/admin/DevicePolicyManager;
    if-eqz v1, :cond_1

    .line 147
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    const-string v3, "IrdaService"

    const-string v4, "Exchange IT Policy has disabled IRDA service. Cannot enable"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    const/4 v3, 0x0

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z

    .line 161
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 152
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_0
    const-string v3, "IrdaService"

    const-string v4, "Exchange IT Policy has enabled IRDA service."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v3, 0x1

    sput-boolean v3, Landroid/app/IrdaService;->bEnabled:Z
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 158
    .end local v1           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 159
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    const-string v3, "IrdaService"

    const-string v4, "Method getAllowIrDA not found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    .restart local v1       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v2       #method:Ljava/lang/reflect/Method;
    :cond_1
    :try_start_1
    const-string v3, "IrdaService"

    const-string/jumbo v4, "mDPM is null. ignore next checking"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Landroid/app/IrdaService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/IrdaService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 178
    invoke-super {p0}, Landroid/app/IIrdaService$Stub;->finalize()V

    .line 179
    const-string v0, "IrdaService"

    const-string v1, "IrdaService : finalize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void
.end method

.method public read_irsend()Ljava/lang/String;
    .locals 8

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v1, irsend_value:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .line 107
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v5, ""

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 109
    sget-boolean v5, Landroid/app/IrdaService;->bEnabled:Z

    if-nez v5, :cond_0

    .line 110
    const-string v5, "IrdaService"

    const-string v6, "IrdaService - read_irsend : bEnabled = false. Return empty string!!"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v5

    .line 113
    :cond_0
    monitor-enter p0

    .line 115
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v3, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 117
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 118
    .local v4, temp:Ljava/lang/String;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    goto :goto_1

    .line 121
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 122
    .end local v3           #reader:Ljava/io/BufferedReader;
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 128
    if-eqz v2, :cond_1

    .line 130
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 138
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    :try_start_4
    iget-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    monitor-exit p0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v5

    :goto_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 128
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_2
    if-eqz v3, :cond_4

    .line 130
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move-object v2, v3

    .line 135
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 133
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_1
    move-exception v0

    .line 134
    .local v0, ex:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v2, v3

    .line 135
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 133
    .end local v4           #temp:Ljava/lang/String;
    .local v0, ex:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 134
    .local v0, ex:Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 123
    .end local v0           #ex:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 124
    .restart local v0       #ex:Ljava/io/IOException;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 128
    if-eqz v2, :cond_1

    .line 130
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_3

    .line 133
    :catch_4
    move-exception v0

    .line 134
    :try_start_a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_3

    .line 125
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 126
    .local v0, ex:Ljava/lang/Exception;
    :goto_6
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 128
    if-eqz v2, :cond_1

    .line 130
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v5, "IrdaService"

    const-string v6, "IrdaService READ COMPLETE"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_3

    .line 133
    :catch_6
    move-exception v0

    .line 134
    .local v0, ex:Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 128
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_1
    move-exception v5

    :goto_7
    if-eqz v2, :cond_3

    .line 130
    :try_start_e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Landroid/app/IrdaService;->read_ir_send:Ljava/lang/String;

    .line 131
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 132
    const-string v6, "IrdaService"

    const-string v7, "IrdaService READ COMPLETE"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 135
    :cond_3
    :goto_8
    :try_start_f
    throw v5

    .line 133
    :catch_7
    move-exception v0

    .line 134
    .restart local v0       #ex:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    .line 139
    .end local v0           #ex:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :catchall_2
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 128
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v5

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_7

    .line 125
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_6

    .line 123
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_9
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_5

    .line 121
    .end local v4           #temp:Ljava/lang/String;
    :catch_a
    move-exception v0

    goto/16 :goto_2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    .restart local v4       #temp:Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public write_irsend(Ljava/lang/String;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 72
    const/4 v1, 0x0

    .line 73
    .local v1, out:Ljava/io/FileWriter;
    sget-boolean v4, Landroid/app/IrdaService;->bEnabled:Z

    if-nez v4, :cond_0

    .line 74
    const-string v4, "IrdaService"

    const-string v5, "IrdaService - write_irsend : bEnabled = false. Return!!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :goto_0
    return-void

    .line 77
    :cond_0
    monitor-enter p0

    .line 79
    :try_start_0
    const-string v4, "UTF-8"

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 80
    .local v3, utf8:[B
    new-instance v4, Ljava/lang/String;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    .line 81
    new-instance v2, Ljava/io/FileWriter;

    const-string v4, "/sys/class/sec/sec_ir/ir_send"

    invoke-direct {v2, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 82
    .end local v1           #out:Ljava/io/FileWriter;
    .local v2, out:Ljava/io/FileWriter;
    :try_start_1
    iget-object v4, p0, Landroid/app/IrdaService;->mStr:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 84
    const-string v4, "IrdaService"

    const-string v5, "IrdaService WRITE COMPLETE"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 93
    if-eqz v2, :cond_3

    .line 95
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 101
    .end local v2           #out:Ljava/io/FileWriter;
    .end local v3           #utf8:[B
    .restart local v1       #out:Ljava/io/FileWriter;
    :cond_1
    :goto_1
    :try_start_3
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 96
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catch_0
    move-exception v4

    move-object v1, v2

    .line 98
    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1

    .line 86
    .end local v3           #utf8:[B
    :catch_1
    move-exception v0

    .line 87
    .local v0, ex:Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    if-eqz v1, :cond_1

    .line 95
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 96
    :catch_2
    move-exception v4

    goto :goto_1

    .line 88
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 89
    .local v0, ex:Ljava/io/IOException;
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 93
    if-eqz v1, :cond_1

    .line 95
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 96
    :catch_4
    move-exception v4

    goto :goto_1

    .line 90
    .end local v0           #ex:Ljava/io/IOException;
    :catch_5
    move-exception v0

    .line 91
    .local v0, ex:Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 93
    if-eqz v1, :cond_1

    .line 95
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_1

    .line 96
    :catch_6
    move-exception v4

    goto :goto_1

    .line 93
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    :goto_6
    if-eqz v1, :cond_2

    .line 95
    :try_start_a
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 98
    :cond_2
    :goto_7
    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 96
    :catch_7
    move-exception v5

    goto :goto_7

    .line 101
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    .restart local v3       #utf8:[B
    :catchall_2
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_2

    .line 93
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catchall_3
    move-exception v4

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_6

    .line 90
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_8
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_5

    .line 88
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_9
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_4

    .line 86
    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :catch_a
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_3

    .end local v1           #out:Ljava/io/FileWriter;
    .restart local v2       #out:Ljava/io/FileWriter;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/FileWriter;
    .restart local v1       #out:Ljava/io/FileWriter;
    goto :goto_1
.end method
