.class Landroid/widget/SearchView$2;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    iput-object p1, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Landroid/widget/SearchView$2;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->updateFocusedState()V
    invoke-static {v0}, Landroid/widget/SearchView;->access$000(Landroid/widget/SearchView;)V

    .line 154
    return-void
.end method
