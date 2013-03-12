.class Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;
.super Ljava/lang/Object;
.source "TickerSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawerToggler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 988
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 988
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;-><init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->access$200(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 997
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    #getter for: Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimateOnClick:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->access$300(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateToggle()V

    goto :goto_0

    .line 1000
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;->this$0:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->toggle()V

    goto :goto_0
.end method
