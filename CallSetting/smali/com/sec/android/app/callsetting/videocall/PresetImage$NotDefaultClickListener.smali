.class Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/callsetting/videocall/PresetImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotDefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;Lcom/sec/android/app/callsetting/videocall/PresetImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 226
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 232
    if-nez p2, :cond_0

    .line 234
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    .line 235
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #getter for: Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$200(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-boolean v4, v4, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 236
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clickable attr. for the Default image"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #getter for: Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v5}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$200(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ImageButton;->isClickable()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_path"

    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-virtual {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preset_name"

    iget-object v5, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const v6, 0x7f0700d5

    invoke-virtual {v5, v6}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 241
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #getter for: Lcom/sec/android/app/callsetting/videocall/PresetImage;->mImageButton:Landroid/widget/ImageButton;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$200(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/widget/ImageButton;

    move-result-object v3

    const v4, 0x7f02000b

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 271
    :goto_0
    return-void

    .line 243
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$300(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 246
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x32

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 250
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$400(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x33

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 254
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x3

    if-ne p2, v3, :cond_3

    .line 256
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$500(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 257
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x34

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 261
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->checkRemainingSize()J
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$600(Lcom/sec/android/app/callsetting/videocall/PresetImage;)J

    move-result-wide v1

    .line 263
    .local v1, sizeLimit:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v3, v1, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$700(Lcom/sec/android/app/callsetting/videocall/PresetImage;J)Landroid/content/Intent;

    move-result-object v0

    .line 265
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x35

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 268
    .end local v0           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$NotDefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method
