.class Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;
.super Ljava/lang/Object;
.source "GlassLockScreenFMRadioWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$500(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget$3;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    #calls: Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->resetMinTimer()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->access$600(Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;)V

    .line 319
    return-void
.end method
