.class Landroid/widget/Editor$2;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->onTouchUpEvent(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method constructor <init>(Landroid/widget/Editor;)V
    .locals 0
    .parameter

    .prologue
    .line 1762
    iput-object p1, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1764
    iget-object v0, p0, Landroid/widget/Editor$2;->this$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->showSuggestions()V

    .line 1765
    return-void
.end method
