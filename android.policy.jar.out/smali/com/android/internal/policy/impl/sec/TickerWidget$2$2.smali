.class Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;
.super Ljava/lang/Object;
.source "TickerWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/TickerWidget$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/TickerWidget$2;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerWidget$2$2;->this$1:Lcom/android/internal/policy/impl/sec/TickerWidget$2;

    iget-object v0, v0, Lcom/android/internal/policy/impl/sec/TickerWidget$2;->this$0:Lcom/android/internal/policy/impl/sec/TickerWidget;

    #calls: Lcom/android/internal/policy/impl/sec/TickerWidget;->updateTickerData()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/sec/TickerWidget;->access$700(Lcom/android/internal/policy/impl/sec/TickerWidget;)V

    .line 165
    return-void
.end method
