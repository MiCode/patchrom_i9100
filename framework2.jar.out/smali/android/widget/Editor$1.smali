.class Landroid/widget/Editor$1;
.super Landroid/view/OrientationEventListener;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;-><init>(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 247
    iput-object p1, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .parameter "orientation"

    .prologue
    .line 250
    :try_start_0
    iget-object v2, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 252
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object v3, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mLastOrientation:I
    invoke-static {v3}, Landroid/widget/Editor;->access$100(Landroid/widget/Editor;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 294
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    :goto_0
    return-void

    .line 256
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 257
    .local v1, handler:Landroid/os/Handler;
    new-instance v2, Landroid/widget/Editor$1$1;

    invoke-direct {v2, p0}, Landroid/widget/Editor$1$1;-><init>(Landroid/widget/Editor$1;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 268
    iget-object v2, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    #setter for: Landroid/widget/Editor;->mLastOrientation:I
    invoke-static {v2, v3}, Landroid/widget/Editor;->access$102(Landroid/widget/Editor;I)I

    .line 269
    iget-object v2, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #calls: Landroid/widget/Editor;->updateShowAsAction(Landroid/content/res/Configuration;)V
    invoke-static {v2, v0}, Landroid/widget/Editor;->access$300(Landroid/widget/Editor;Landroid/content/res/Configuration;)V

    .line 273
    iget-object v2, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    instance-of v2, v2, Landroid/inputmethodservice/ExtractEditText;

    if-nez v2, :cond_0

    .line 274
    iget-object v2, p0, Landroid/widget/Editor$1;->this$0:Landroid/widget/Editor;

    #getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/Editor$1$2;

    invoke-direct {v3, p0}, Landroid/widget/Editor$1$2;-><init>(Landroid/widget/Editor$1;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    .end local v0           #config:Landroid/content/res/Configuration;
    .end local v1           #handler:Landroid/os/Handler;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
