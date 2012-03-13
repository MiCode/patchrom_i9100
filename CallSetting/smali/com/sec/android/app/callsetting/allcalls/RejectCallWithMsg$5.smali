.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 281
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/16 v3, 0x64

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current mState in setOnItemLongClickListener = :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v2}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 286
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSelectedItem:I
    invoke-static {v0, p3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$002(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 287
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    const/4 v1, 0x4

    #setter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v0, v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$202(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;I)I

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->removeDialog(I)V

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$5;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->showDialog(I)V

    .line 290
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
