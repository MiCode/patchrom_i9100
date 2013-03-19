.class Lcom/sec/android/app/camera/Camcorder$7;
.super Ljava/lang/Object;
.source "Camcorder.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/Camcorder;->isGpsEULAEnabledinCamcorder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/Camcorder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/Camcorder;)V
    .locals 0
    .parameter

    .prologue
    .line 2775
    iput-object p1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2777
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    #setter for: Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/Camcorder;->access$2102(Lcom/sec/android/app/camera/Camcorder;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 2778
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder$7;->this$0:Lcom/sec/android/app/camera/Camcorder;

    #getter for: Lcom/sec/android/app/camera/Camcorder;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/sec/android/app/camera/Camcorder;->access$2100(Lcom/sec/android/app/camera/Camcorder;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 2779
    return-void
.end method
