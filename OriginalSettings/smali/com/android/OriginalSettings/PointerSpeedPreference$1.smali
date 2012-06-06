.class Lcom/android/OriginalSettings/PointerSpeedPreference$1;
.super Landroid/database/ContentObserver;
.source "PointerSpeedPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/PointerSpeedPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/OriginalSettings/PointerSpeedPreference;


# direct methods
.method constructor <init>(Lcom/android/OriginalSettings/PointerSpeedPreference;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/OriginalSettings/PointerSpeedPreference$1;->this$0:Lcom/android/OriginalSettings/PointerSpeedPreference;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/OriginalSettings/PointerSpeedPreference$1;->this$0:Lcom/android/OriginalSettings/PointerSpeedPreference;

    #calls: Lcom/android/OriginalSettings/PointerSpeedPreference;->onSpeedChanged()V
    invoke-static {v0}, Lcom/android/OriginalSettings/PointerSpeedPreference;->access$000(Lcom/android/OriginalSettings/PointerSpeedPreference;)V

    .line 52
    return-void
.end method
