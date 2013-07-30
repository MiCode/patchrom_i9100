.class Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$12;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$12;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler$12;->this$0:Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/sec_settings/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 452
    return-void
.end method
