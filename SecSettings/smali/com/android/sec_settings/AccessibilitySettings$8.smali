.class Lcom/android/sec_settings/AccessibilitySettings$8;
.super Ljava/lang/Object;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/AccessibilitySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/AccessibilitySettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/AccessibilitySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/sec_settings/AccessibilitySettings$8;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1447
    iget-object v3, p0, Lcom/android/sec_settings/AccessibilitySettings$8;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/sec_settings/AccessibilitySettings;->removeDialog(I)V

    .line 1448
    const-string v3, "ro.screenreader.market"

    const-string v4, "market://search?q=pname:com.google.android.marvin.talkback"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, screenreaderMarketLink:Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1452
    .local v1, marketUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1453
    .local v0, marketIntent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/sec_settings/AccessibilitySettings$8;->this$0:Lcom/android/sec_settings/AccessibilitySettings;

    invoke-virtual {v3, v0}, Lcom/android/sec_settings/AccessibilitySettings;->startActivity(Landroid/content/Intent;)V

    .line 1454
    return-void
.end method
