.class Lcom/sec/android/app/callsetting/videocall/PresetImage$3;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/videocall/PresetImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 411
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #getter for: Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$200(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #getter for: Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$200(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    .line 415
    const-string v0, "PresetImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width, outputX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget v2, v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v0, "PresetImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Height, outputY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$3;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget v2, v2, Lcom/sec/android/app/callsetting/videocall/PresetImage;->outputY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    return-void
.end method
