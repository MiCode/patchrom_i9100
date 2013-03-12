.class public Landroid/net/wifi/WifiInfo;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiInfo;",
            ">;"
        }
    .end annotation
.end field

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field public static final LINK_SPEED_UNITS:Ljava/lang/String; = "Mbps"

.field private static final TAG:Ljava/lang/String; = "WifiInfo"

.field private static final WIFI_MAC_FILE:Ljava/lang/String; = "/efs/wifi/.mac.info"

.field private static final stateMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/net/wifi/SupplicantState;",
            "Landroid/net/NetworkInfo$DetailedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBSSID:Ljava/lang/String;

.field private mFrequency:I

.field private mHiddenSSID:Z

.field private mIpAddress:Ljava/net/InetAddress;

.field private mLinkSpeed:I

.field private mMacAddress:Ljava/lang/String;

.field private mMeteredHint:Z

.field private mNetworkId:I

.field private mRssi:I

.field private mSSID:Ljava/lang/String;

.field private mSupplicantState:Landroid/net/wifi/SupplicantState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 42
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Landroid/net/wifi/WifiInfo;->DBG:Z

    .line 49
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Landroid/net/wifi/SupplicantState;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    .line 53
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    new-instance v0, Landroid/net/wifi/WifiInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 97
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 98
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 99
    const/16 v0, -0x270f

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 100
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 102
    iput v1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiInfo;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 109
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 112
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 113
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    .line 114
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 115
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 116
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mRssi:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 117
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 118
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 119
    iget-object v0, p1, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 120
    iget-boolean v0, p1, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 121
    iget v0, p1, Landroid/net/wifi/WifiInfo;->mFrequency:I

    iput v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 123
    :cond_0
    return-void
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Landroid/net/wifi/WifiInfo;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return p1
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiInfo;Landroid/net/wifi/SupplicantState;)Landroid/net/wifi/SupplicantState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object p1
.end method

.method public static getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "suppState"

    .prologue
    .line 293
    sget-object v0, Landroid/net/wifi/WifiInfo;->stateMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public static getMacAddressFromFile()Ljava/lang/String;
    .locals 12

    .prologue
    .line 200
    const/4 v3, 0x0

    .line 201
    .local v3, in:Ljava/io/DataInputStream;
    const/4 v5, 0x0

    .line 202
    .local v5, length:I
    const/16 v6, 0x11

    .line 203
    .local v6, macLength:I
    const/16 v9, 0x20

    new-array v0, v9, [B

    .line 204
    .local v0, buffer:[B
    const/4 v7, 0x0

    .line 207
    .local v7, retValue:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v9, Ljava/io/BufferedInputStream;

    new-instance v10, Ljava/io/FileInputStream;

    const-string v11, "/efs/wifi/.mac.info"

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v9}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v5

    .line 209
    if-lt v5, v6, :cond_0

    .line 210
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v6}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 211
    .end local v7           #retValue:Ljava/lang/String;
    .local v8, retValue:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    .line 216
    .end local v8           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    :cond_0
    if-eqz v4, :cond_3

    .line 218
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v4

    .line 225
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_0
    return-object v7

    .line 219
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v1

    .line 220
    .local v1, e:Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 221
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 213
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 214
    .local v2, ignore:Ljava/io/IOException;
    :goto_1
    :try_start_4
    const-string v9, "WifiInfo"

    const-string v10, "Failed to get MAC address from /efs/wifi/.mac.info"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 216
    if-eqz v3, :cond_1

    .line 218
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 219
    :catch_2
    move-exception v1

    .line 220
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "WifiInfo"

    const-string v10, "Failed to close .mac.info file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #ignore:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    if-eqz v3, :cond_2

    .line 218
    :try_start_6
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 221
    :cond_2
    :goto_3
    throw v9

    .line 219
    :catch_3
    move-exception v1

    .line 220
    .restart local v1       #e:Ljava/io/IOException;
    const-string v10, "WifiInfo"

    const-string v11, "Failed to close .mac.info file"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 216
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v7           #retValue:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v8       #retValue:Ljava/lang/String;
    :catchall_2
    move-exception v9

    move-object v7, v8

    .end local v8           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 213
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3           #in:Ljava/io/DataInputStream;
    .end local v7           #retValue:Ljava/lang/String;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v8       #retValue:Ljava/lang/String;
    :catch_5
    move-exception v2

    move-object v7, v8

    .end local v8           #retValue:Ljava/lang/String;
    .restart local v7       #retValue:Ljava/lang/String;
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :cond_3
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 328
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 333
    .end local p0
    .local v0, length:I
    :cond_0
    :goto_0
    return-object p0

    .line 329
    .end local v0           #length:I
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 330
    .restart local v0       #length:I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 331
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .locals 2
    .parameter "stateName"

    .prologue
    .line 307
    const-string v1, "4WAY_HANDSHAKE"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 308
    sget-object v1, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 313
    :goto_0
    return-object v1

    .line 311
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, e:Ljava/lang/IllegalArgumentException;
    sget-object v1, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public getBSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    return v0
.end method

.method public getHiddenSSID()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    return v0
.end method

.method public getIpAddress()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/InetAddress;)I

    move-result v0

    goto :goto_0
.end method

.method public getLinkSpeed()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    return v0
.end method

.method public getMacAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    .line 194
    :cond_0
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 196
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMeteredHint()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    return v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    return v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method setBSSID(Ljava/lang/String;)V
    .locals 0
    .parameter "BSSID"

    .prologue
    .line 143
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    .line 144
    return-void
.end method

.method setFrequency(I)V
    .locals 0
    .parameter "frequency"

    .prologue
    .line 323
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    .line 324
    return-void
.end method

.method public setHiddenSSID(Z)V
    .locals 0
    .parameter "hiddenSSID"

    .prologue
    .line 284
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 285
    return-void
.end method

.method setInetAddress(Ljava/net/InetAddress;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 266
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    .line 267
    return-void
.end method

.method setLinkSpeed(I)V
    .locals 0
    .parameter "linkSpeed"

    .prologue
    .line 179
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    .line 180
    return-void
.end method

.method setMacAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "macAddress"

    .prologue
    .line 187
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setMeteredHint(Z)V
    .locals 0
    .parameter "meteredHint"

    .prologue
    .line 230
    iput-boolean p1, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    .line 231
    return-void
.end method

.method setNetworkId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 239
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    .line 240
    return-void
.end method

.method setRssi(I)V
    .locals 0
    .parameter "rssi"

    .prologue
    .line 166
    iput p1, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    .line 167
    return-void
.end method

.method setSSID(Ljava/lang/String;)V
    .locals 1
    .parameter "SSID"

    .prologue
    .line 126
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiInfo;->mHiddenSSID:Z

    .line 129
    return-void
.end method

.method setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 262
    iput-object p1, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 263
    return-void
.end method

.method setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .parameter "stateName"

    .prologue
    .line 303
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    .line 304
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 338
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 339
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 341
    .local v0, none:Ljava/lang/String;
    sget-boolean v2, Landroid/net/wifi/WifiInfo;->DBG:Z

    if-eqz v2, :cond_0

    .line 342
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", MAC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    if-nez v2, :cond_3

    move-object v2, v0

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    :cond_0
    const-string v2, ", Supplicant state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    if-nez v3, :cond_4

    .end local v0           #none:Ljava/lang/String;
    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", RSSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Link speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Net ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", Metered hint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", mFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 354
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 342
    .restart local v0       #none:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mSSID:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    goto :goto_2

    .line 346
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    goto :goto_3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 364
    iget v2, p0, Landroid/net/wifi/WifiInfo;->mNetworkId:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    iget v2, p0, Landroid/net/wifi/WifiInfo;->mRssi:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    iget v2, p0, Landroid/net/wifi/WifiInfo;->mLinkSpeed:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 367
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    if-eqz v2, :cond_0

    .line 368
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 369
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mIpAddress:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 373
    :goto_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mBSSID:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Landroid/net/wifi/WifiInfo;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 376
    iget-boolean v2, p0, Landroid/net/wifi/WifiInfo;->mMeteredHint:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    iget-object v0, p0, Landroid/net/wifi/WifiInfo;->mSupplicantState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/SupplicantState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 378
    iget v0, p0, Landroid/net/wifi/WifiInfo;->mFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    return-void

    .line 371
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 376
    goto :goto_1
.end method
