.class Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "TickerSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1005
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 1007
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1012
    :goto_0
    return-void

    .line 1009
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    #calls: Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->access$400(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V

    goto :goto_0

    .line 1007
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
