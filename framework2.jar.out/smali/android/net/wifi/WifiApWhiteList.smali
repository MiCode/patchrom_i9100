.class public Landroid/net/wifi/WifiApWhiteList;
.super Ljava/lang/Object;
.source "WifiApWhiteList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiApWhiteList$WhiteList;
    }
.end annotation


# static fields
.field public static final WL_ALREADY_IN_TABLE:I = 0x4

.field public static final WL_FAIL:I = 0x2

.field public static final WL_NOT_IN_TABLE:I = 0x5

.field public static final WL_NOT_MAC:I = 0x3

.field public static final WL_SUCCESS:I = 0x1

.field private static volatile uniqueInstance:Landroid/net/wifi/WifiApWhiteList;


# instance fields
.field private final BUFFER_SIZE:I

.field private final HOSTAPD_ACCEPT:Ljava/lang/String;

.field private mWhiteList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/net/wifi/WifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "/data/misc/wifi/hostapd.accept"

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->HOSTAPD_ACCEPT:Ljava/lang/String;

    .line 39
    const/16 v0, 0x40

    iput v0, p0, Landroid/net/wifi/WifiApWhiteList;->BUFFER_SIZE:I

    .line 50
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    .line 51
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->createOrChangePermission()V

    .line 52
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->readWhiteListFile()V

    .line 53
    return-void
.end method

.method private createOrChangePermission()V
    .locals 6

    .prologue
    .line 63
    new-instance v2, Ljava/io/File;

    const-string v4, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    .local v2, file:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 66
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "/system/bin/sh"

    aput-object v5, v0, v4

    const/4 v4, 0x1

    const-string v5, "-c"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    const-string v5, "/system/bin/chmod 665 /data/misc/wifi/hostapd.accept"

    aput-object v5, v0, v4

    .line 67
    .local v0, cmd:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 69
    .local v3, p:Ljava/lang/Process;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 70
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v3           #p:Ljava/lang/Process;
    :goto_0
    return-void

    .line 71
    .restart local v0       #cmd:[Ljava/lang/String;
    .restart local v3       #p:Ljava/lang/Process;
    :catch_0
    move-exception v1

    .line 72
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 74
    .end local v0           #cmd:[Ljava/lang/String;
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v3           #p:Ljava/lang/Process;
    :catch_1
    move-exception v1

    .line 75
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Landroid/net/wifi/WifiApWhiteList;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/net/wifi/WifiApWhiteList;

    invoke-direct {v0}, Landroid/net/wifi/WifiApWhiteList;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    .line 59
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiApWhiteList;->uniqueInstance:Landroid/net/wifi/WifiApWhiteList;

    return-object v0
.end method

.method private isMacAddress(Ljava/lang/String;)Z
    .locals 3
    .parameter "macAddressCandidate"

    .prologue
    .line 210
    const-string v2, "[0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0-9a-fA-F]{2}[-:][0 -9a-fA-F]{2}[-:][0-9a-fA-F]{2}"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 211
    .local v1, macPattern:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 212
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private readWhiteListFile()V
    .locals 8

    .prologue
    .line 80
    iget-object v6, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x40

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 86
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, bufReadLine:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 87
    const/4 v4, 0x0

    .line 88
    .local v4, mac:Ljava/lang/String;
    const/4 v5, 0x0

    .line 89
    .local v5, name:Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 90
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 92
    iget-object v6, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v7, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-direct {v7, v4, v5}, Landroid/net/wifi/WifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 95
    .end local v2           #bufReadLine:Ljava/lang/String;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v1

    .line 96
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    .local v3, e:Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eqz v0, :cond_1

    .line 100
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 106
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 98
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v2       #bufReadLine:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_4

    .line 100
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 103
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2

    .line 101
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 102
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 103
    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2

    .line 101
    .end local v2           #bufReadLine:Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 102
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 98
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v0, :cond_3

    .line 100
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 103
    :cond_3
    :goto_4
    throw v6

    .line 101
    :catch_3
    move-exception v3

    .line 102
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 98
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_3

    .line 95
    :catch_4
    move-exception v3

    goto :goto_1

    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    .restart local v2       #bufReadLine:Ljava/lang/String;
    :cond_4
    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private writeWhiteListFile()V
    .locals 6

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 111
    .local v1, fw:Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    const-string v5, "/data/misc/wifi/hostapd.accept"

    invoke-direct {v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 112
    .end local v1           #fw:Ljava/io/FileWriter;
    .local v2, fw:Ljava/io/FileWriter;
    :try_start_1
    iget-object v5, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 113
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 115
    .local v4, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    const-string v5, "#"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 117
    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 118
    :cond_0
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v4}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 120
    const-string v5, "\n"

    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 122
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    .end local v4           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 123
    .end local v2           #fw:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #fw:Ljava/io/FileWriter;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    if-eqz v1, :cond_1

    .line 127
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 133
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 125
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_2
    if-eqz v2, :cond_4

    .line 127
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v1, v2

    .line 130
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 128
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catch_1
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 130
    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .line 128
    .end local v3           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :catch_2
    move-exception v0

    .line 129
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_3

    .line 127
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 130
    :cond_3
    :goto_4
    throw v5

    .line 128
    :catch_3
    move-exception v0

    .line 129
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 125
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_3

    .line 122
    :catch_4
    move-exception v0

    goto :goto_1

    .end local v1           #fw:Ljava/io/FileWriter;
    .restart local v2       #fw:Ljava/io/FileWriter;
    .restart local v3       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_4
    move-object v1, v2

    .end local v2           #fw:Ljava/io/FileWriter;
    .restart local v1       #fw:Ljava/io/FileWriter;
    goto :goto_2
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "mac"
    .parameter "name"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiApWhiteList;->isMacAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v1, 0x3

    .line 147
    :goto_0
    return v1

    .line 139
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 140
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 141
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x4

    goto :goto_0

    .line 145
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    new-instance v2, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    invoke-direct {v2, p1, p2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 147
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mac"

    .prologue
    .line 178
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 179
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 181
    .local v1, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v2

    .line 185
    .end local v1           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/net/wifi/WifiApWhiteList$WhiteList;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public isContains(Ljava/lang/String;)Z
    .locals 3
    .parameter "mac"

    .prologue
    .line 189
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 190
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 192
    .local v1, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const/4 v2, 0x1

    .line 196
    .end local v1           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public modifyWhiteList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "mac"
    .parameter "name"

    .prologue
    .line 165
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 168
    .local v1, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v1, p2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->setName(Ljava/lang/String;)V

    .line 170
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 171
    const/4 v2, 0x1

    .line 174
    .end local v1           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public removeWhiteList(Ljava/lang/String;)I
    .locals 3
    .parameter "mac"

    .prologue
    .line 151
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 154
    .local v1, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Landroid/net/wifi/WifiApWhiteList;->mWhiteList:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 156
    invoke-direct {p0}, Landroid/net/wifi/WifiApWhiteList;->writeWhiteListFile()V

    .line 157
    const/4 v2, 0x1

    .line 161
    .end local v1           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x2

    goto :goto_0
.end method
