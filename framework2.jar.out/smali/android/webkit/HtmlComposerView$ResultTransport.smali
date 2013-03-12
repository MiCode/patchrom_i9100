.class public Landroid/webkit/HtmlComposerView$ResultTransport;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultTransport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mParam:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private mResult:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/webkit/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkit/HtmlComposerView;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;TE;)V"
        }
    .end annotation

    .prologue
    .line 5752
    .local p0, this:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<TT;TE;>;"
    .local p2, param:[Ljava/lang/Object;,"[TT;"
    .local p3, defaultResult:Ljava/lang/Object;,"TE;"
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$ResultTransport;->this$0:Landroid/webkit/HtmlComposerView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5753
    iput-object p3, p0, Landroid/webkit/HtmlComposerView$ResultTransport;->mResult:Ljava/lang/Object;

    .line 5754
    iput-object p2, p0, Landroid/webkit/HtmlComposerView$ResultTransport;->mParam:[Ljava/lang/Object;

    .line 5755
    return-void
.end method


# virtual methods
.method public declared-synchronized getParams()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .prologue
    .line 5758
    .local p0, this:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ResultTransport;->mParam:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 5766
    .local p0, this:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<TT;TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 5762
    .local p0, this:Landroid/webkit/HtmlComposerView$ResultTransport;,"Landroid/webkit/HtmlComposerView$ResultTransport<TT;TE;>;"
    .local p1, result:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/HtmlComposerView$ResultTransport;->mResult:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5763
    monitor-exit p0

    return-void

    .line 5762
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
