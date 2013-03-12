.class Landroid/server/spell/SpellManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "SpellManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/spell/SpellManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/spell/SpellManagerService;


# direct methods
.method constructor <init>(Landroid/server/spell/SpellManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private updateSpellScrollInfo()V
    .locals 5

    .prologue
    .line 120
    iget-object v3, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    #calls: Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;
    invoke-static {v3}, Landroid/server/spell/SpellManagerService;->access$200(Landroid/server/spell/SpellManagerService;)Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v3

    int-to-long v1, v3

    .line 123
    .local v1, prevHash:J
    iget-object v3, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    #calls: Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;
    invoke-static {v3}, Landroid/server/spell/SpellManagerService;->access$200(Landroid/server/spell/SpellManagerService;)Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->scanSpellScrolls()V

    .line 125
    iget-object v3, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    #calls: Landroid/server/spell/SpellManagerService;->getScanner()Landroid/server/spell/SpellScrollScanner;
    invoke-static {v3}, Landroid/server/spell/SpellManagerService;->access$200(Landroid/server/spell/SpellManagerService;)Landroid/server/spell/SpellScrollScanner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/server/spell/SpellScrollScanner;->getInformationHash()I

    move-result v3

    int-to-long v3, v3

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.spell.action.SPELLSCROLL_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x2000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 130
    iget-object v3, p0, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->this$0:Landroid/server/spell/SpellManagerService;

    #getter for: Landroid/server/spell/SpellManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/server/spell/SpellManagerService;->access$100(Landroid/server/spell/SpellManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 132
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 0
    .parameter "pkg"

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->updateSpellScrollInfo()V

    .line 116
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Landroid/server/spell/SpellManagerService$MyPackageMonitor;->updateSpellScrollInfo()V

    .line 111
    return-void
.end method
