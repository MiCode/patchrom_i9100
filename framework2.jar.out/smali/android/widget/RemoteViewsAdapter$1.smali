.class Landroid/widget/RemoteViewsAdapter$1;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViewsAdapter;->saveRemoteViewsCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/RemoteViewsAdapter;

.field final synthetic val$key:Landroid/util/Pair;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViewsAdapter;Landroid/util/Pair;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 841
    iput-object p1, p0, Landroid/widget/RemoteViewsAdapter$1;->this$0:Landroid/widget/RemoteViewsAdapter;

    iput-object p2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/util/Pair;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 844
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1300()Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 845
    :try_start_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 846
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1300()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_0
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1400()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 849
    invoke-static {}, Landroid/widget/RemoteViewsAdapter;->access$1400()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$1;->val$key:Landroid/util/Pair;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    :cond_1
    monitor-exit v1

    .line 852
    return-void

    .line 851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
