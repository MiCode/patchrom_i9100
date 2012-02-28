.class public Landroid/server/MAPRecordService;
.super Ljava/lang/Object;
.source "MAPRecordService.java"


# static fields
.field public static final BT_STATE_CHANGE:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final DBG:Z = true

.field public static final MAP_ADDRECORD:Ljava/lang/String; = "android.intent.action.MAP_ADDRECORD"

.field public static final MAP_EXTRA_CHANNEL:Ljava/lang/String; = "android.intent.extra.MAP_EXTRA_CHANNEL"

.field public static final MAP_EXTRA_MASID:Ljava/lang/String; = "android.intent.extra.MAP_EXTRA_MASID"

.field public static final MAP_EXTRA_NAME:Ljava/lang/String; = "android.intent.extra.MAP_EXTRA_NAME"

.field public static final MAP_EXTRA_TYPES:Ljava/lang/String; = "android.intent.extra.MAP_EXTRA_TYPES"

.field private static final TAG:Ljava/lang/String; = "MAPRecordService"

.field private static mRecordHandle:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Landroid/server/MAPRecordService;->mRecordHandle:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 48
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Landroid/server/MAPRecordService$1;

    invoke-direct {v1, p0}, Landroid/server/MAPRecordService$1;-><init>(Landroid/server/MAPRecordService;)V

    iput-object v1, p0, Landroid/server/MAPRecordService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    iput-object p1, p0, Landroid/server/MAPRecordService;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 52
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MAP_ADDRECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 53
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Landroid/server/MAPRecordService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/server/MAPRecordService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Landroid/server/MAPRecordService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 26
    sget v0, Landroid/server/MAPRecordService;->mRecordHandle:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput p0, Landroid/server/MAPRecordService;->mRecordHandle:I

    return p0
.end method

.method static synthetic access$200(Landroid/server/MAPRecordService;Ljava/lang/String;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/server/MAPRecordService;->addServiceRecord(Ljava/lang/String;III)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/server/MAPRecordService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/server/MAPRecordService;->removeServiceRecord(I)V

    return-void
.end method

.method private native addServiceRecord(Ljava/lang/String;III)I
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 92
    const-string v0, "MAPRecordService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method private native removeServiceRecord(I)V
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
    .line 59
    iget-object v0, p0, Landroid/server/MAPRecordService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/server/MAPRecordService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 60
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 61
    return-void
.end method
