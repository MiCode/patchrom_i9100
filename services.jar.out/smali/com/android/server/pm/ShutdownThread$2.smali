.class final Lcom/android/server/pm/ShutdownThread$2;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/ShutdownThread;->shutdownInner(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$confirm:Z

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/server/pm/ShutdownThread$2;->val$context:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/android/server/pm/ShutdownThread$2;->val$confirm:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/pm/ShutdownThread$2;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/server/pm/ShutdownThread$2;->val$confirm:Z

    #calls: Lcom/android/server/pm/ShutdownThread;->beginShutdownSequence(Landroid/content/Context;Z)V
    invoke-static {v0, v1}, Lcom/android/server/pm/ShutdownThread;->access$000(Landroid/content/Context;Z)V

    .line 236
    return-void
.end method
