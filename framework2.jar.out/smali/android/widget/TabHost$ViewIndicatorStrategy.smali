.class Landroid/widget/TabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "TabHost.java"

# interfaces
.implements Landroid/widget/TabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method private constructor <init>(Landroid/widget/TabHost;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 623
    iput-object p1, p0, Landroid/widget/TabHost$ViewIndicatorStrategy;->this$0:Landroid/widget/TabHost;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 624
    iput-object p2, p0, Landroid/widget/TabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 625
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TabHost;Landroid/view/View;Landroid/widget/TabHost$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 619
    invoke-direct {p0, p1, p2}, Landroid/widget/TabHost$ViewIndicatorStrategy;-><init>(Landroid/widget/TabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Landroid/widget/TabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method
