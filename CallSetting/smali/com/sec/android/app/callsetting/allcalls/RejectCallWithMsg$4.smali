.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V
    .locals 0
    .parameter

    .prologue
    .line 252
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x3

    .line 255
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current mState in setOnItemClickListener = :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 258
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v4, p3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 259
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v5

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItemForEdit:I
    invoke-static {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$302(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 260
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const/4 v5, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v4, v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$202(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 261
    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$500(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v6}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v5, v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$402(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->rejectMsgListID:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$600(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$000(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 264
    .local v3, update_id:I
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 265
    .local v1, intent:Landroid/content/Intent;
    new-instance v2, Ljava/lang/String;

    const-string v4, "com.sec.android.app.callsetting"

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 266
    .local v2, pkgName:Ljava/lang/String;
    const-string v4, ".allcalls.RejectMessages"

    invoke-virtual {v2, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, className:Ljava/lang/String;
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v4, "SELECTED_MESSAGE"

    iget-object v5, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mTempEditString:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$400(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v4, "UPDATE_MODE"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 271
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-virtual {v4, v1, v7}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    .end local v0           #className:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #pkgName:Ljava/lang/String;
    .end local v3           #update_id:I
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 275
    iget-object v4, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$4;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateDeleteItems()V
    invoke-static {v4}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$700(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    goto :goto_0
.end method
