.class final Landroid/view/View$PerformClick;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerformClick"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .parameter

    .prologue
    .line 17296
    iput-object p1, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17296
    invoke-direct {p0, p1}, Landroid/view/View$PerformClick;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 17298
    iget-object v0, p0, Landroid/view/View$PerformClick;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 17299
    return-void
.end method
