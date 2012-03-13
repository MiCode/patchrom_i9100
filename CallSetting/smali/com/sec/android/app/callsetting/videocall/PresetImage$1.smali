.class Lcom/sec/android/app/callsetting/videocall/PresetImage$1;
.super Ljava/lang/Object;
.source "PresetImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/videocall/PresetImage;->setListener()V
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
    .line 161
    iput-object p1, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    .line 164
    .local v0, context:Landroid/content/Context;
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-boolean v3, v3, Lcom/sec/android/app/callsetting/videocall/PresetImage;->isVideoContents:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 165
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    sget-object v4, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {v0, v2}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 172
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "PresetImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t play video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sec/android/app/callsetting/videocall/PresetImage;->mUriVideos:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    iget-object v3, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/videocall/PresetImage$1;->this$0:Lcom/sec/android/app/callsetting/videocall/PresetImage;

    const v5, 0x7f07003c

    invoke-virtual {v4, v5}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/callsetting/videocall/PresetImage;->displayToast(Ljava/lang/String;)V

    goto :goto_0
.end method
