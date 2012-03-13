.class Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;
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
    name = "DefaultClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;Lcom/sec/android/app/callsetting/videocall/PresetImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 275
    invoke-direct {p0, p1}, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;-><init>(Lcom/sec/android/app/callsetting/videocall/PresetImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 281
    if-nez p2, :cond_0

    .line 283
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->pickImageFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$300(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 284
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x32

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    .line 310
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 286
    :cond_0
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->pickVideoFromGallery()Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$400(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 289
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x33

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 291
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 293
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->capturePicture()Landroid/content/Intent;
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$500(Lcom/sec/android/app/callsetting/videocall/PresetImage;)Landroid/content/Intent;

    move-result-object v0

    .line 294
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x34

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 298
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->checkRemainingSize()J
    invoke-static {v3}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$600(Lcom/sec/android/app/callsetting/videocall/PresetImage;)J

    move-result-wide v1

    .line 300
    .local v1, sizeLimit:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    .line 302
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    #calls: Lcom/sec/android/app/callsetting/videocall/PresetImage;->recordVideo(J)Landroid/content/Intent;
    invoke-static {v3, v1, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->access$700(Lcom/sec/android/app/callsetting/videocall/PresetImage;J)Landroid/content/Intent;

    move-result-object v0

    .line 303
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const/16 v4, 0x35

    invoke-virtual {v3, v0, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 307
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$DefaultClickListener;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const v5, 0x7f07003a

    invoke-virtual {v4, v5}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method
