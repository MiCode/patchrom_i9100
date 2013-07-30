.class Lcom/android/sec_settings/nearby/NearbySettings$7;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/sec_settings/nearby/NearbySettings;->requestWelcomePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/sec_settings/nearby/NearbySettings;

.field final synthetic val$welcomeCheck:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/sec_settings/nearby/NearbySettings;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/sec_settings/nearby/NearbySettings$7;->this$0:Lcom/android/sec_settings/nearby/NearbySettings;

    iput-object p2, p0, Lcom/android/sec_settings/nearby/NearbySettings$7;->val$welcomeCheck:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "button"
    .parameter "value"

    .prologue
    .line 815
    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllshareSetting: WelcomeCheck - onCheckedChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/android/sec_settings/nearby/NearbySettings$7;->val$welcomeCheck:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->playSoundEffect(I)V

    .line 817
    return-void
.end method
