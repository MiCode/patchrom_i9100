.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;
.super Ljava/lang/Object;
.source "CircleMissedEventWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 174
    const-string v0, "CircleMissedEventWidget"

    const-string v1, "onTouchEvent() in MissedEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 196
    const-string v0, "MissedEvent"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 181
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x108040a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108043b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 183
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108043f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 188
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x1080406

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108043a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->mMissedMsgIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;->access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidget;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108043e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
