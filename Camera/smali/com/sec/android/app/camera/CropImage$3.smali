.class Lcom/sec/android/app/camera/CropImage$3;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/CropImage;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/CropImage;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/sec/android/app/camera/CropImage$3;->this$0:Lcom/sec/android/app/camera/CropImage;

    iput-object p2, p0, Lcom/sec/android/app/camera/CropImage$3;->val$intent:Landroid/content/Intent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, intentForVideoPlayer:Landroid/content/Intent;
    const-string v1, "com.sec.android.app.videoplayer"

    const-string v2, "com.sec.android.app.videoplayer.activity.MoviePlayer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$3;->val$intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/CropImage$3;->this$0:Lcom/sec/android/app/camera/CropImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CropImage;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method
