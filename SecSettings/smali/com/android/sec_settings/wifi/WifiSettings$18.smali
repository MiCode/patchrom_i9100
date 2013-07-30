.class Lcom/android/sec_settings/wifi/WifiSettings$18;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/android/sec_settings/wifi/WifiSettings$18;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings$18;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    #getter for: Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/WifiSettings;->access$1300(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1654
    iget-object v0, p0, Lcom/android/sec_settings/wifi/WifiSettings$18;->this$0:Lcom/android/sec_settings/wifi/WifiSettings;

    #getter for: Lcom/android/sec_settings/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/sec_settings/wifi/WifiSettings;->access$1300(Lcom/android/sec_settings/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1655
    :cond_0
    return-void
.end method
