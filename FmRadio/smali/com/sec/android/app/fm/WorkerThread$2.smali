.class Lcom/sec/android/app/fm/WorkerThread$2;
.super Ljava/lang/Object;
.source "WorkerThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/WorkerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/WorkerThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/WorkerThread;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    iput-object p1, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    #getter for: Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/fm/WorkerThread;->access$000(Lcom/sec/android/app/fm/WorkerThread;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    #getter for: Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/fm/WorkerThread;->access$000(Lcom/sec/android/app/fm/WorkerThread;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    #getter for: Lcom/sec/android/app/fm/WorkerThread;->mResId:I
    invoke-static {v1}, Lcom/sec/android/app/fm/WorkerThread;->access$100(Lcom/sec/android/app/fm/WorkerThread;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    #getter for: Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/fm/WorkerThread;->access$000(Lcom/sec/android/app/fm/WorkerThread;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    #getter for: Lcom/sec/android/app/fm/WorkerThread;->mView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/app/fm/WorkerThread;->access$000(Lcom/sec/android/app/fm/WorkerThread;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/fm/WorkerThread$2;->this$0:Lcom/sec/android/app/fm/WorkerThread;

    #getter for: Lcom/sec/android/app/fm/WorkerThread;->mResId:I
    invoke-static {v1}, Lcom/sec/android/app/fm/WorkerThread;->access$100(Lcom/sec/android/app/fm/WorkerThread;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    goto :goto_0
.end method
