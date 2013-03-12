.class public Landroid/net/wifi/p2p/WifiP2pGroup;
.super Ljava/lang/Object;
.source "WifiP2pGroup.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pGroup;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WifiP2pGroup"

.field private static final groupStartedPattern:Ljava/util/regex/Pattern;

.field private static final wfdCpledSinkPattern:Ljava/util/regex/Pattern;

.field private static final wfdPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mFrequency:I

.field private mInterface:Ljava/lang/String;

.field private mIsGroupOwner:Z

.field private mNetworkName:Ljava/lang/String;

.field private mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mPassphrase:Ljava/lang/String;

.field private mWfdInfo:Lcom/samsung/wfd/WfdInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "ssid=\"(.+)\" freq=(\\d+) (?:psk=)?([0-9a-fA-F]{64})?(?:passphrase=)?(?:\"(.{8,63})\")? go_dev_addr=((?:[0-9a-f]{2}:){5}[0-9a-f]{2})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "wfd_dev_info=(0x[0-9a-fA-F]+) wfd_ctrl_port=([0-9]+) wfd_max_tput=([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->wfdPattern:Ljava/util/regex/Pattern;

    .line 80
    const-string v0, "wfd_cpled_sink_status=(0x[0-9a-fA-F]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->wfdCpledSinkPattern:Ljava/util/regex/Pattern;

    .line 343
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pGroup$1;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pGroup$1;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/WifiP2pGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 61
    new-instance v0, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v0}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4
    .parameter "source"

    .prologue
    .line 310
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 61
    new-instance v2, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v2}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 311
    if-eqz p1, :cond_1

    .line 312
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 313
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 314
    iget-boolean v2, p1, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    iput-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 315
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v3

    .line 316
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .local v0, d:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    .end local v0           #d:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 320
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    .line 321
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getWfdInfo()Lcom/samsung/wfd/WfdInfo;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 323
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11
    .parameter "supplicantEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    .line 61
    new-instance v9, Lcom/samsung/wfd/WfdInfo;

    invoke-direct {v9}, Lcom/samsung/wfd/WfdInfo;-><init>()V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 104
    const-string v9, " "

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, tokens:[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x3

    if-ge v9, v10, :cond_0

    .line 107
    const-string v9, "WifiP2pGroup"

    const-string v10, "Malformed supplicant event"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "P2P-GROUP"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 111
    const/4 v9, 0x1

    aget-object v9, v8, v9

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 112
    const/4 v9, 0x2

    aget-object v9, v8, v9

    const-string v10, "GO"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 114
    sget-object v9, Landroid/net/wifi/p2p/WifiP2pGroup;->groupStartedPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 115
    .local v3, match:Ljava/util/regex/Matcher;
    sget-object v9, Landroid/net/wifi/p2p/WifiP2pGroup;->wfdPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 116
    .local v4, matchForWfd:Ljava/util/regex/Matcher;
    sget-object v9, Landroid/net/wifi/p2p/WifiP2pGroup;->wfdCpledSinkPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v9, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 117
    .local v5, matchForWfdCpledSink:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_2

    .line 150
    .end local v3           #match:Ljava/util/regex/Matcher;
    .end local v4           #matchForWfd:Ljava/util/regex/Matcher;
    .end local v5           #matchForWfdCpledSink:Ljava/util/regex/Matcher;
    :cond_1
    :goto_0
    return-void

    .line 121
    .restart local v3       #match:Ljava/util/regex/Matcher;
    .restart local v4       #matchForWfd:Ljava/util/regex/Matcher;
    .restart local v5       #matchForWfdCpledSink:Ljava/util/regex/Matcher;
    :cond_2
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 123
    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    .line 125
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 126
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v10, 0x5

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 128
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 129
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->parseHex(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/samsung/wfd/WfdInfo;->dev_info:I

    .line 130
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    const/4 v10, 0x2

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/samsung/wfd/WfdInfo;->ctrl_port:I

    .line 131
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/samsung/wfd/WfdInfo;->max_tput:I

    .line 133
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    iget-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/p2p/WifiP2pGroup;->parseHex(Ljava/lang/String;)I

    move-result v10

    iput v10, v9, Lcom/samsung/wfd/WfdInfo;->cpled_sink_status:I

    goto :goto_0

    .line 137
    .end local v3           #match:Ljava/util/regex/Matcher;
    .end local v4           #matchForWfd:Ljava/util/regex/Matcher;
    .end local v5           #matchForWfdCpledSink:Ljava/util/regex/Matcher;
    :cond_3
    const/4 v9, 0x0

    aget-object v9, v8, v9

    const-string v10, "P2P-INVITATION-RECEIVED"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 138
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v7, v0, v1

    .line 139
    .local v7, token:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, nameValue:[Ljava/lang/String;
    array-length v9, v6

    const/4 v10, 0x2

    if-eq v9, v10, :cond_5

    .line 138
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    :cond_5
    const/4 v9, 0x0

    aget-object v9, v6, v9

    const-string v10, "go_dev_addr"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 143
    new-instance v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    const/4 v10, 0x1

    aget-object v10, v6, v10

    invoke-direct {v9, v10}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_2

    .line 148
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v6           #nameValue:[Ljava/lang/String;
    .end local v7           #token:Ljava/lang/String;
    :cond_6
    const-string v9, "WifiP2pGroup"

    const-string v10, "Malformed supplicant event"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private parseHex(Ljava/lang/String;)I
    .locals 5
    .parameter "hexString"

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, num:I
    const-string v2, "0x"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "0X"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 374
    :cond_1
    const/16 v2, 0x10

    :try_start_0
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 378
    :goto_0
    return v1

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v2, "WifiP2pGroup"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse hex string "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 200
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v3

    .line 201
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 202
    .local v0, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit v3

    .line 206
    .end local v0           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v3

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addClient(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 187
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 188
    return-void
.end method

.method public addClient(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "address"
    .parameter "deviceName"
    .parameter "devType"

    .prologue
    .line 192
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v0, p2}, Landroid/net/wifi/p2p/WifiP2pDevice;->setDeviceName(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v0, p3}, Landroid/net/wifi/p2p/WifiP2pDevice;->setDeviceType(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0, v0}, Landroid/net/wifi/p2p/WifiP2pGroup;->addClient(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 196
    return-void
.end method

.method public contains(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 231
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v0, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    monitor-exit v1

    .line 234
    :goto_0
    return v0

    .line 233
    :cond_1
    monitor-exit v1

    .line 234
    const/4 v0, 0x0

    goto :goto_0

    .line 233
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return v0
.end method

.method public getClientList()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    return v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method public getPassphrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public getWfdInfo()Lcom/samsung/wfd/WfdInfo;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/samsung/wfd/WfdInfo;->deviceAddress:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    return-object v0
.end method

.method public isClientListEmpty()Z
    .locals 2

    .prologue
    .line 224
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v1

    .line 225
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isGroupOwner()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    return v0
.end method

.method public removeClient(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 2
    .parameter "device"

    .prologue
    .line 217
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeClient(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 210
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2, p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 270
    iput p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    .line 271
    return-void
.end method

.method public setInterface(Ljava/lang/String;)V
    .locals 0
    .parameter "intf"

    .prologue
    .line 260
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setIsGroupOwner(Z)V
    .locals 0
    .parameter "isGo"

    .prologue
    .line 167
    iput-boolean p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    .line 168
    return-void
.end method

.method public setNetworkName(Ljava/lang/String;)V
    .locals 0
    .parameter "networkName"

    .prologue
    .line 154
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setOwner(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "device"

    .prologue
    .line 177
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 178
    return-void
.end method

.method public setPassphrase(Ljava/lang/String;)V
    .locals 0
    .parameter "passphrase"

    .prologue
    .line 246
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setWfdInfo(Lcom/samsung/wfd/WfdInfo;)V
    .locals 0
    .parameter "wfdInfo"

    .prologue
    .line 280
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    .line 281
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 290
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 291
    .local v2, sbuf:Ljava/lang/StringBuffer;
    const-string v3, "network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    const-string v3, "\n isGO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-boolean v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 293
    const-string v3, "\n GO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 294
    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v4

    .line 295
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 296
    .local v0, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string v3, "\n Client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 298
    .end local v0           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 299
    const-string v3, "\n interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 300
    const-string v3, "\n frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 301
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 327
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 328
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mOwner:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 329
    iget-boolean v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mIsGroupOwner:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 330
    iget-object v3, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    monitor-enter v3

    .line 331
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 332
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 333
    .local v0, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    .line 335
    .end local v0           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 329
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 335
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mInterface:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 338
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mFrequency:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pGroup;->mWfdInfo:Lcom/samsung/wfd/WfdInfo;

    invoke-virtual {p1, v2, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 340
    return-void
.end method
