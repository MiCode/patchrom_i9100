.class Lcom/sec/android/app/fm/TagsActivity$1;
.super Lcom/samsung/media/fmradio/FMEventListener;
.source "TagsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/fm/TagsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/fm/TagsActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/fm/TagsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-direct {p0}, Lcom/samsung/media/fmradio/FMEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onOff(I)V
    .locals 4
    .parameter "reasonCode"

    .prologue
    const/4 v3, 0x0

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event [onOff] :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->clearCurTagList()V

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    const-string v2, "localpreference"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/TagsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 396
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "rtplus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 399
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/TagsActivity;->updateTags(Z)V

    .line 400
    return-void
.end method

.method public onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "freq"
    .parameter "channelName"
    .parameter "radioText"

    .prologue
    const/4 v3, 0x0

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onRDSReceived] ChannelName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " RadioText:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->setRadioText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-static {v1}, Lcom/sec/android/app/fm/TagsActivity;->access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->getTagListArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    const-string v2, "localpreference"

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/fm/TagsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 409
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "rtplus"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 410
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 412
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/fm/TagsActivity;->updateTags(Z)V

    .line 414
    :cond_1
    return-void
.end method

.method public onRTPlusReceived(IIIIII)V
    .locals 5
    .parameter "contentType1"
    .parameter "startPos1"
    .parameter "additionalLen1"
    .parameter "contentType2"
    .parameter "startPos2"
    .parameter "additionalLen2"

    .prologue
    const/4 v4, 0x1

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, neetToUpdate1:Z
    const/4 v1, 0x0

    .line 420
    .local v1, neetToUpdate2:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onRTPlusReceived] contentType1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  startPos1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  additionalLen1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[onRTPlusReceived] contentType2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  startPos2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  additionalLen2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/sec/android/app/fm/TagsActivity;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$400(Ljava/lang/String;)V

    .line 423
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-virtual {v2, v3, p1, p2, p3}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addCurTagList(Landroid/content/Context;III)Z

    move-result v0

    .line 424
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    #getter for: Lcom/sec/android/app/fm/TagsActivity;->tagListMgr:Lcom/sec/android/app/fm/ui/RTPTagListManager;
    invoke-static {v2}, Lcom/sec/android/app/fm/TagsActivity;->access$500(Lcom/sec/android/app/fm/TagsActivity;)Lcom/sec/android/app/fm/ui/RTPTagListManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-virtual {v2, v3, p4, p5, p6}, Lcom/sec/android/app/fm/ui/RTPTagListManager;->addCurTagList(Landroid/content/Context;III)Z

    move-result v1

    .line 425
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 426
    :cond_0
    invoke-static {v4}, Lcom/sec/android/app/fm/MainActivity;->setUpdateRTWithRTP(Z)V

    .line 427
    iget-object v2, p0, Lcom/sec/android/app/fm/TagsActivity$1;->this$0:Lcom/sec/android/app/fm/TagsActivity;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/fm/TagsActivity;->updateTags(Z)V

    .line 429
    :cond_1
    return-void
.end method
