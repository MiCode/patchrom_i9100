.class Lcom/sec/android/app/fm/TagsActivity$2;
.super Ljava/lang/Object;
.source "TagsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/fm/TagsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/sec/android/app/fm/TagsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/TagsActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 587
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 588
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/fm/TagsActivity$2;->count:I

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 6

    .prologue
    .line 590
    monitor-enter p0

    :try_start_0
    const-string v2, "RUN!!!!!!!!!!!!!!!"

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 591
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    .line 592
    .local v1, y:I
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    .line 593
    .local v0, v:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollView:ScrollY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 594
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 596
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollView:ScrollY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 597
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/fm/TagsActivity;->access$700(Lcom/sec/android/app/fm/TagsActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 607
    :goto_0
    monitor-exit p0

    return-void

    .line 600
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->count:I

    const/4 v3, 0x3

    if-ge v2, v3, :cond_2

    .line 601
    iget v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->count:I

    .line 602
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/sec/android/app/fm/TagsActivity;->access$700(Lcom/sec/android/app/fm/TagsActivity;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 590
    .end local v0           #v:Z
    .end local v1           #y:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 605
    .restart local v0       #v:Z
    .restart local v1       #y:I
    :cond_2
    const/4 v2, 0x0

    :try_start_2
    iput v2, p0, Lcom/sec/android/app/fm/TagsActivity$2;->count:I

    .line 606
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scrollView:ScrollY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   v:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$2;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->scrollView:Landroid/widget/ScrollView;
    invoke-static {v3}, Lcom/sec/android/app/fm/TagsActivity;->access$600(Lcom/sec/android/app/fm/TagsActivity;)Landroid/widget/ScrollView;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   end!!!!!!!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
