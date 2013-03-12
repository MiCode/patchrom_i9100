.class Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;
.super Ljava/lang/Object;
.source "CircleMissedEventWidgetDA.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)V
    .locals 0
    .parameter

    .prologue
    .line 259
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 264
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 296
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    sget-object v1, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;->MissedCall:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    #setter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mUnlockMode:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1002(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;)Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$UnlockMode;

    .line 297
    const-string v0, "MissedEvent"

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockListener:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;
    invoke-static {v1}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->setOnCircleUnlockListener(Lcom/android/internal/policy/impl/sec/CircleUnlockWidget$OnCircleUnlockListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mCircleUnlockView:Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$1200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/internal/policy/impl/sec/CircleUnlockWidget;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 266
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mWaterlockHelpText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$100(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x108040a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108043b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 274
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$200(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    const v1, 0x1080406

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedCallIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$300(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x108043a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$800(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I

    move-result v0

    if-lez v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsgBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$400(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedMsg:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$500(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 288
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$900(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvmBackground:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$600(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA$2;->this$0:Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;

    #getter for: Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->mMissedVvm:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;->access$700(Lcom/android/internal/policy/impl/sec/CircleMissedEventWidgetDA;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 264
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
