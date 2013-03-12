.class public Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;
.super Ljava/util/TimerTask;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SingleCursorTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method protected constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 0
    .parameter

    .prologue
    .line 5696
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5699
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$SingleCursorTimerTask;->this$0:Landroid/webkit/HtmlComposerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/HtmlComposerView;->mIsSCHExpired:Z

    .line 5700
    return-void
.end method
