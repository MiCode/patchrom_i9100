.class Landroid/view/VolumePanel$LoadListener;
.super Ljava/lang/Object;
.source "VolumePanel.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/VolumePanel;


# direct methods
.method private constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0
    .parameter

    .prologue
    .line 410
    iput-object p1, p0, Landroid/view/VolumePanel$LoadListener;->this$0:Landroid/view/VolumePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 410
    invoke-direct {p0, p1}, Landroid/view/VolumePanel$LoadListener;-><init>(Landroid/view/VolumePanel;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    .line 413
    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLoadComplete(sampleId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    if-ltz p3, :cond_0

    .line 415
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    .line 418
    :goto_0
    return-void

    .line 417
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/VolumePanel;->mIsLoadSoundPool:Z

    goto :goto_0
.end method
