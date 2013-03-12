.class Lcom/android/internal/policy/impl/PenDetachmentAlert$3;
.super Ljava/lang/Object;
.source "PenDetachmentAlert.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PenDetachmentAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V
    .locals 0
    .parameter

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 277
    iget-object v0, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    .line 278
    .local v0, scontext:Landroid/hardware/scontext/SContext;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 279
    const-string v1, "PenDetachmentAlert"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mStepCount:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$400(Lcom/android/internal/policy/impl/PenDetachmentAlert;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " step count alert!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$500(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #getter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mPenInserted:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$600(Lcom/android/internal/policy/impl/PenDetachmentAlert;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #calls: Lcom/android/internal/policy/impl/PenDetachmentAlert;->showDialog()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$700(Lcom/android/internal/policy/impl/PenDetachmentAlert;)V

    .line 282
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mIsDialogShowing:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$102(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/PenDetachmentAlert$3;->this$0:Lcom/android/internal/policy/impl/PenDetachmentAlert;

    #setter for: Lcom/android/internal/policy/impl/PenDetachmentAlert;->mDialogShowed:Z
    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/PenDetachmentAlert;->access$502(Lcom/android/internal/policy/impl/PenDetachmentAlert;Z)Z

    .line 286
    :cond_0
    return-void
.end method
