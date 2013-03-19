.class Lcom/android/settings/rcs/RcsSettings$1;
.super Landroid/database/ContentObserver;
.source "RcsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/rcs/RcsSettings;->registerRcsProviderObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/rcs/RcsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/rcs/RcsSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/rcs/RcsSettings$1;->this$0:Lcom/android/settings/rcs/RcsSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/rcs/RcsSettings$1;->this$0:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    .line 150
    return-void
.end method
