.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->softkeyRightRun(Landroid/view/View;)V
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
    .line 371
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mListAdapter:Landroid/widget/ArrayAdapter;
    invoke-static {v1}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$1100(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$900(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$7;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->selectAll:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 376
    sget-object v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mSoftkeyView:Lcom/sec/android/touchwiz/widget/TwSoftkeyView;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSoftkeyView;->setVisibility(I)V

    .line 377
    return-void
.end method
