.class public abstract Lcom/android/internal/telephony/cat/CatBIPConnection;
.super Ljava/lang/Object;
.source "CatBIPConnection.java"


# instance fields
.field bufferSize:I

.field channelId:I

.field linkStateCause:B

.field public mBuffsizeModified:Z

.field mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

.field uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;


# direct methods
.method public constructor <init>(ILcom/android/internal/telephony/cat/TransportLevel;Lcom/android/internal/telephony/cat/CatBIPManager;)V
    .locals 2
    .parameter "buffSize"
    .parameter "iface"
    .parameter "catBIPManager"

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/16 v0, 0x5dc

    if-le p1, v0, :cond_0

    .line 71
    const/16 p1, 0x5dc

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    .line 76
    :goto_0
    iput p1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->bufferSize:I

    .line 77
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/cat/TransportLevel;

    .line 78
    iput-byte v1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->linkStateCause:B

    .line 79
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mCatBIPManager:Lcom/android/internal/telephony/cat/CatBIPManager;

    .line 80
    return-void

    .line 74
    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/CatBIPConnection;->mBuffsizeModified:Z

    goto :goto_0
.end method


# virtual methods
.method public abstract terminateStreams()V
.end method
