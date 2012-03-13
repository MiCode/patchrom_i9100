.class Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;
.super Ljava/lang/Object;
.source "RejectCallWithMsg.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->deleteDialog()V
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
    .line 985
    iput-object p1, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 987
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #calls: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->updateRejectMessage()V
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$900(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)V

    .line 988
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    #getter for: Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->mState:I
    invoke-static {v0}, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->access$200(Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 989
    iget-object v0, p0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg$18;->this$0:Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;

    iget-object v0, v0, Lcom/sec/android/app/callsetting/allcalls/RejectCallWithMsg;->emptyText:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 990
    :cond_0
    return-void
.end method
