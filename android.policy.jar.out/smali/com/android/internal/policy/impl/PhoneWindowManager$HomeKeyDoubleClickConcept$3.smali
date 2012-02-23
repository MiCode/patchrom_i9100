.class Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->collapseQuickPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)V
    .locals 0
    .parameter

    .prologue
    .line 5343
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5345
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mStatusBar:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5346
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mStatusBar:Landroid/app/StatusBarManager;
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1502(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;Landroid/app/StatusBarManager;)Landroid/app/StatusBarManager;

    .line 5349
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mStatusBar:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Landroid/app/StatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5350
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->mStatusBar:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;->access$1500(Lcom/android/internal/policy/impl/PhoneWindowManager$HomeKeyDoubleClickConcept;)Landroid/app/StatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 5352
    :cond_1
    return-void
.end method
