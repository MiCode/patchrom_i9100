.class Lcom/android/internal/policy/impl/PhoneWindowManager$26$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$26;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$26;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$26;)V
    .locals 0
    .parameter

    .prologue
    .line 6665
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6667
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$26$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$26;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$26;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v1, 0x0

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->statusBarBehavior(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$1600(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)V

    .line 6668
    return-void
.end method
