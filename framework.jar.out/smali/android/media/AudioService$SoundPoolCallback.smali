.class final Landroid/media/AudioService$SoundPoolCallback;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SoundPoolCallback"
.end annotation


# instance fields
.field mLastSample:I

.field mStatus:I

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method private constructor <init>(Landroid/media/AudioService;)V
    .locals 0
    .parameter

    .prologue
    .line 2147
    iput-object p1, p0, Landroid/media/AudioService$SoundPoolCallback;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2147
    invoke-direct {p0, p1}, Landroid/media/AudioService$SoundPoolCallback;-><init>(Landroid/media/AudioService;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 2
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 2162
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolCallback;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2163
    if-eqz p3, :cond_0

    .line 2164
    :try_start_0
    iput p3, p0, Landroid/media/AudioService$SoundPoolCallback;->mStatus:I

    .line 2166
    :cond_0
    iget v0, p0, Landroid/media/AudioService$SoundPoolCallback;->mLastSample:I

    if-ne p2, v0, :cond_1

    .line 2167
    iget-object v0, p0, Landroid/media/AudioService$SoundPoolCallback;->this$0:Landroid/media/AudioService;

    #getter for: Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/media/AudioService;->access$1500(Landroid/media/AudioService;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2169
    :cond_1
    monitor-exit v1

    .line 2170
    return-void

    .line 2169
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setLastSample(I)V
    .locals 0
    .parameter "sample"

    .prologue
    .line 2158
    iput p1, p0, Landroid/media/AudioService$SoundPoolCallback;->mLastSample:I

    .line 2159
    return-void
.end method

.method public status()I
    .locals 1

    .prologue
    .line 2154
    iget v0, p0, Landroid/media/AudioService$SoundPoolCallback;->mStatus:I

    return v0
.end method
