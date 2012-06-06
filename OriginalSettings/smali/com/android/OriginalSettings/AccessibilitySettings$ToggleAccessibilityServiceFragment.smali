.class public Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServiceFragment;
.super Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;
.source "AccessibilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/OriginalSettings/AccessibilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToggleAccessibilityServiceFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 972
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;-><init>(Lcom/android/OriginalSettings/AccessibilitySettings$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 972
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 972
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 972
    invoke-super {p0, p1}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 972
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    .prologue
    .line 972
    invoke-super {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onDestroyView()V

    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 12
    .parameter "preferenceKey"
    .parameter "enabled"

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServiceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    #calls: Lcom/android/OriginalSettings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    invoke-static {v9}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$600(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v3

    .line 979
    .local v3, enabledServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 981
    .local v8, toggledService:Landroid/content/ComponentName;
    if-eqz p2, :cond_0

    .line 983
    const/4 v0, 0x1

    .line 984
    .local v0, accessibilityEnabled:Z
    invoke-interface {v3, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1002
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1006
    .local v4, enabledServicesBuilder:Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1007
    .local v2, enabledService:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const/16 v9, 0x3a

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 987
    .end local v0           #accessibilityEnabled:Z
    .end local v2           #enabledService:Landroid/content/ComponentName;
    .end local v4           #enabledServicesBuilder:Ljava/lang/StringBuilder;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .line 988
    .local v1, enabledAndInstalledServiceCount:I
    invoke-static {}, Lcom/android/OriginalSettings/AccessibilitySettings;->access$700()Ljava/util/Set;

    move-result-object v7

    .line 989
    .local v7, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 990
    .restart local v2       #enabledService:Landroid/content/ComponentName;
    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 991
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 995
    .end local v2           #enabledService:Landroid/content/ComponentName;
    :cond_2
    const/4 v9, 0x1

    if-gt v1, v9, :cond_3

    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 998
    .restart local v0       #accessibilityEnabled:Z
    :goto_3
    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 995
    .end local v0           #accessibilityEnabled:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 1010
    .end local v1           #enabledAndInstalledServiceCount:I
    .end local v7           #installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v0       #accessibilityEnabled:Z
    .restart local v4       #enabledServicesBuilder:Ljava/lang/StringBuilder;
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 1011
    .local v5, enabledServicesBuilderLength:I
    if-lez v5, :cond_6

    .line 1012
    add-int/lit8 v9, v5, -0x1

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1014
    :cond_6
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServiceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1019
    invoke-virtual {p0}, Lcom/android/OriginalSettings/AccessibilitySettings$ToggleAccessibilityServiceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "accessibility_enabled"

    if-eqz v0, :cond_7

    const/4 v9, 0x1

    :goto_4
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1021
    return-void

    .line 1019
    :cond_7
    const/4 v9, 0x0

    goto :goto_4
.end method

.method public bridge synthetic onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 972
    invoke-super {p0, p1, p2}, Lcom/android/OriginalSettings/AccessibilitySettings$TogglePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method
