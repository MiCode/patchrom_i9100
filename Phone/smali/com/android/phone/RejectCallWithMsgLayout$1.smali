.class Lcom/android/phone/RejectCallWithMsgLayout$1;
.super Landroid/os/Handler;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RejectCallWithMsgLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/RejectCallWithMsgLayout;


# direct methods
.method constructor <init>(Lcom/android/phone/RejectCallWithMsgLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 81
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 83
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 84
    .local v1, index:I
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 86
    .local v3, text:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgLayout;->access$000(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 87
    .local v2, item:Landroid/widget/LinearLayout;
    const v4, 0x7f090152

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v4, 0x7f090153

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    move-object v0, v4

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, btn:Landroid/widget/Button;
    new-instance v4, Lcom/android/phone/RejectCallWithMsgLayout$1$1;

    invoke-direct {v4, p0}, Lcom/android/phone/RejectCallWithMsgLayout$1$1;-><init>(Lcom/android/phone/RejectCallWithMsgLayout$1;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsgLayout$1;->this$0:Lcom/android/phone/RejectCallWithMsgLayout;

    #getter for: Lcom/android/phone/RejectCallWithMsgLayout;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;
    invoke-static {v4}, Lcom/android/phone/RejectCallWithMsgLayout;->access$300(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
