.class Landroid/media/AudioService$RemotePlaybackState;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field mRccId:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;III)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "vol"
    .parameter "volMax"

    .prologue
    .line 5336
    iput-object p1, p0, Landroid/media/AudioService$RemotePlaybackState;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5337
    iput p2, p0, Landroid/media/AudioService$RemotePlaybackState;->mRccId:I

    .line 5338
    iput p3, p0, Landroid/media/AudioService$RemotePlaybackState;->mVolume:I

    .line 5339
    iput p4, p0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeMax:I

    .line 5340
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioService$RemotePlaybackState;->mVolumeHandling:I

    .line 5341
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;IIILandroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 5330
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/media/AudioService$RemotePlaybackState;-><init>(Landroid/media/AudioService;III)V

    return-void
.end method
