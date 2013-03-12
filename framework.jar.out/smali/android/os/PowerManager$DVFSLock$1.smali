.class Landroid/os/PowerManager$DVFSLock$1;
.super Ljava/lang/Object;
.source "PowerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager$DVFSLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/os/PowerManager$DVFSLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$DVFSLock;)V
    .locals 0
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Landroid/os/PowerManager$DVFSLock$1;->this$1:Landroid/os/PowerManager$DVFSLock;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Landroid/os/PowerManager$DVFSLock$1;->this$1:Landroid/os/PowerManager$DVFSLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$DVFSLock;->release()V

    .line 655
    return-void
.end method
