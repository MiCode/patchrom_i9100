.class Landroid/webkit/WebViewClassic$7;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewClassic;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;

.field final synthetic val$copy:Landroid/os/Bundle;

.field final synthetic val$in:Ljava/io/FileInputStream;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;Ljava/io/FileInputStream;Landroid/os/Bundle;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3211
    iput-object p1, p0, Landroid/webkit/WebViewClassic$7;->this$0:Landroid/webkit/WebViewClassic;

    iput-object p2, p0, Landroid/webkit/WebViewClassic$7;->val$in:Ljava/io/FileInputStream;

    iput-object p3, p0, Landroid/webkit/WebViewClassic$7;->val$copy:Landroid/os/Bundle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3215
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebViewClassic$7;->val$in:Ljava/io/FileInputStream;

    invoke-static {v1}, Landroid/graphics/Picture;->createFromStream(Ljava/io/InputStream;)Landroid/graphics/Picture;

    move-result-object v0

    .line 3216
    .local v0, p:Landroid/graphics/Picture;
    if-eqz v0, :cond_0

    .line 3219
    iget-object v1, p0, Landroid/webkit/WebViewClassic$7;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v1, v1, Landroid/webkit/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebViewClassic$7$1;

    invoke-direct {v2, p0, v0}, Landroid/webkit/WebViewClassic$7$1;-><init>(Landroid/webkit/WebViewClassic$7;Landroid/graphics/Picture;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3228
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebViewClassic$7;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3233
    :goto_0
    return-void

    .line 3227
    .end local v0           #p:Landroid/graphics/Picture;
    :catchall_0
    move-exception v1

    .line 3228
    :try_start_2
    iget-object v2, p0, Landroid/webkit/WebViewClassic$7;->val$in:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 3227
    :goto_1
    throw v1

    .line 3229
    .restart local v0       #p:Landroid/graphics/Picture;
    :catch_0
    move-exception v1

    goto :goto_0

    .end local v0           #p:Landroid/graphics/Picture;
    :catch_1
    move-exception v2

    goto :goto_1
.end method
