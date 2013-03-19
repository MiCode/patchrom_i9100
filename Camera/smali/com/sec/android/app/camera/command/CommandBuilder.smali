.class public Lcom/sec/android/app/camera/command/CommandBuilder;
.super Ljava/lang/Object;
.source "CommandBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CommandBuilder"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 1
    .parameter "id"
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/app/camera/command/CommandBuilder;->buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;

    move-result-object v0

    return-object v0
.end method

.method public static buildCommand(ILcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;I)Lcom/sec/android/app/camera/command/MenuCommand;
    .locals 11
    .parameter "id"
    .parameter "activityContext"
    .parameter "glParentView"
    .parameter "menuDepot"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 42
    const/16 v1, 0x63

    if-ne p0, v1, :cond_0

    .line 43
    new-instance v0, Lcom/sec/android/app/camera/command/EmptyCommand;

    invoke-direct {v0}, Lcom/sec/android/app/camera/command/EmptyCommand;-><init>()V

    .line 509
    :goto_0
    :sswitch_0
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuResourceDepot()Lcom/sec/android/app/camera/MenuResourceDepot;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/MenuResourceDepot;->getResource(I)Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;

    move-result-object v4

    .line 47
    .local v4, res:Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;
    if-eqz v4, :cond_11

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, command:Lcom/sec/android/app/camera/command/MenuCommand;
    const/16 v1, 0x28

    if-ne p0, v1, :cond_1

    .line 50
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 51
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 52
    :cond_1
    const/16 v1, 0xbd1

    if-ne p0, v1, :cond_2

    .line 53
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    const/4 v7, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;IIZ)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 54
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEditableShortcutMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 55
    :cond_2
    const/16 v1, 0x1b

    if-eq p0, v1, :cond_3

    const/16 v1, 0xbd0

    if-ne p0, v1, :cond_4

    .line 56
    :cond_3
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 57
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSettingsMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 58
    :cond_4
    const/4 v1, 0x7

    if-eq p0, v1, :cond_5

    const/16 v1, 0xbc1

    if-ne p0, v1, :cond_6

    .line 59
    :cond_5
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 60
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 61
    :cond_6
    const/16 v1, 0x12

    if-eq p0, v1, :cond_7

    const/16 v1, 0xbc4

    if-ne p0, v1, :cond_8

    .line 62
    :cond_7
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 63
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSliderMenuCommand;->setZOrder(I)V

    goto :goto_0

    .line 64
    :cond_8
    const/16 v1, 0x27

    if-ne p0, v1, :cond_9

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSideMenuRoot()Lcom/sec/android/glview/TwGLViewGroup;

    move-result-object v1

    invoke-direct {v0, p1, v1, p3, v4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 66
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchContextMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 67
    :cond_9
    if-ne p0, v5, :cond_a

    .line 68
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 69
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchFlashMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 70
    :cond_a
    const/16 v1, 0x35

    if-ne p0, v1, :cond_b

    .line 71
    const-string v1, "CommandBuilder"

    const-string v2, "LaunchSnSMenuCommand"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 73
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchSnSSettingMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 74
    :cond_b
    if-eq p0, v6, :cond_c

    const/16 v1, 0xbbc

    if-ne p0, v1, :cond_d

    .line 75
    :cond_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchResolutionMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchResolutionMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 76
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchResolutionMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchResolutionMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 77
    :cond_d
    if-ne p0, v7, :cond_e

    .line 78
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 79
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchShootingModeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 80
    :cond_e
    const/16 v1, 0x8

    if-eq p0, v1, :cond_f

    const/16 v1, 0xbc0

    if-ne p0, v1, :cond_10

    .line 81
    :cond_f
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 82
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchEffectTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 90
    :cond_10
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 91
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 96
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :cond_11
    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    .line 229
    :sswitch_1
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 98
    :sswitch_2
    new-instance v0, Lcom/sec/android/app/camera/command/EditModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/EditModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 103
    :sswitch_3
    new-instance v0, Lcom/sec/android/app/camera/command/CameraSelfModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/CameraSelfModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 108
    :sswitch_4
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderSelfModeSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/CamcorderSelfModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 129
    :sswitch_5
    new-instance v0, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShootingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 145
    :sswitch_6
    new-instance v0, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/SceneModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 151
    :sswitch_7
    new-instance v0, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/OutdoorVisibilitySelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 157
    :sswitch_8
    new-instance v0, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FocusModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 167
    :sswitch_9
    new-instance v0, Lcom/sec/android/app/camera/command/TimerSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/TimerSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 202
    :sswitch_a
    new-instance v0, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ResolutionSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 226
    :sswitch_b
    new-instance v0, Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 244
    :sswitch_c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    .restart local v0       #command:Lcom/sec/android/app/camera/command/MenuCommand;
    move-object v1, v0

    .line 245
    check-cast v1, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-virtual {v1, p4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;->setZOrder(I)V

    goto/16 :goto_0

    .line 256
    .end local v0           #command:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_d
    new-instance v0, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlashMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 273
    :sswitch_e
    new-instance v0, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/WhiteBalanceMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 316
    :sswitch_f
    new-instance v0, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EffectMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 332
    :sswitch_10
    new-instance v0, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ISOMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 338
    :sswitch_11
    new-instance v0, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ExposuremeterMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 345
    :sswitch_12
    new-instance v0, Lcom/sec/android/app/camera/command/AntishakeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AntishakeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 352
    :sswitch_13
    new-instance v0, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoContrastSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 358
    :sswitch_14
    new-instance v0, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CameraQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 364
    :sswitch_15
    new-instance v0, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/CamcorderQualityMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 371
    :sswitch_16
    new-instance v0, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/GuidelineSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 378
    :sswitch_17
    new-instance v0, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ReviewMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 385
    :sswitch_18
    new-instance v0, Lcom/sec/android/app/camera/command/VolumeKeyMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VolumeKeyMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 392
    :sswitch_19
    new-instance v0, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/VoiceCommandMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 398
    :sswitch_1a
    new-instance v5, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object v9, v4

    move v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/sec/android/app/camera/command/SnSSettingMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;I)V

    .line 399
    .local v5, snsCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    invoke-virtual {v5, p4}, Lcom/sec/android/app/camera/command/MenuCommand;->setZOrder(I)V

    move-object v0, v5

    .line 400
    goto/16 :goto_0

    .line 403
    .end local v5           #snsCommand:Lcom/sec/android/app/camera/command/MenuCommand;
    :sswitch_1b
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchListTypeMenuCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    .line 405
    :sswitch_1c
    new-instance v0, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;

    invoke-direct {v0, p1, p2, p3, v4}, Lcom/sec/android/app/camera/command/LaunchDeviceListCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;Lcom/sec/android/app/camera/resourcedata/MenuResourceBase;)V

    goto/16 :goto_0

    .line 413
    :sswitch_1d
    new-instance v0, Lcom/sec/android/app/camera/command/GpsSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/GpsSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 418
    :sswitch_1e
    new-instance v0, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ShutterSoundMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 423
    :sswitch_1f
    new-instance v0, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/FlipMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 432
    :sswitch_20
    new-instance v0, Lcom/sec/android/app/camera/command/EffectRecorderMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/EffectRecorderMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 438
    :sswitch_21
    new-instance v0, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/StorageMenuSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 457
    :sswitch_22
    new-instance v0, Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/DefaultLayoutSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 460
    :sswitch_23
    new-instance v0, Lcom/sec/android/app/camera/command/ResetSettingsCommand;

    invoke-direct {v0, p1}, Lcom/sec/android/app/camera/command/ResetSettingsCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    goto/16 :goto_0

    .line 476
    :sswitch_24
    new-instance v0, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/RecordingModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 484
    :sswitch_25
    new-instance v0, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AudioRecordingSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 489
    :sswitch_26
    new-instance v0, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/BurstModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 497
    :sswitch_27
    new-instance v0, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/ContextualFilenameSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 502
    :sswitch_28
    new-instance v0, Lcom/sec/android/app/camera/command/AutoShareShotModeSelectCommand;

    invoke-direct {v0, p1, p0}, Lcom/sec/android/app/camera/command/AutoShareShotModeSelectCommand;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    goto/16 :goto_0

    .line 96
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1c -> :sswitch_0
        0x1d -> :sswitch_0
        0x1e -> :sswitch_1
        0x1f -> :sswitch_c
        0x20 -> :sswitch_c
        0x21 -> :sswitch_c
        0x22 -> :sswitch_c
        0x24 -> :sswitch_3
        0x25 -> :sswitch_c
        0x26 -> :sswitch_c
        0x32 -> :sswitch_2
        0x33 -> :sswitch_0
        0x36 -> :sswitch_1c
        0x37 -> :sswitch_1a
        0x38 -> :sswitch_1b
        0x39 -> :sswitch_1b
        0x3a -> :sswitch_1a
        0x3e -> :sswitch_b
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x42 -> :sswitch_0
        0x64 -> :sswitch_c
        0x65 -> :sswitch_c
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_3
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x12e -> :sswitch_5
        0x12f -> :sswitch_5
        0x130 -> :sswitch_5
        0x131 -> :sswitch_5
        0x133 -> :sswitch_5
        0x135 -> :sswitch_5
        0x136 -> :sswitch_5
        0x137 -> :sswitch_5
        0x139 -> :sswitch_5
        0x13a -> :sswitch_5
        0x13b -> :sswitch_5
        0x13c -> :sswitch_5
        0x13d -> :sswitch_5
        0x13e -> :sswitch_5
        0x13f -> :sswitch_5
        0x140 -> :sswitch_5
        0x141 -> :sswitch_5
        0x1f4 -> :sswitch_6
        0x1f5 -> :sswitch_6
        0x1f6 -> :sswitch_6
        0x1f7 -> :sswitch_6
        0x1f8 -> :sswitch_6
        0x1f9 -> :sswitch_6
        0x1fa -> :sswitch_6
        0x1fb -> :sswitch_6
        0x1fc -> :sswitch_6
        0x1fd -> :sswitch_6
        0x1fe -> :sswitch_6
        0x1ff -> :sswitch_6
        0x200 -> :sswitch_6
        0x201 -> :sswitch_6
        0x258 -> :sswitch_d
        0x259 -> :sswitch_d
        0x25a -> :sswitch_d
        0x25b -> :sswitch_d
        0x25c -> :sswitch_d
        0x25d -> :sswitch_d
        0x25e -> :sswitch_d
        0x2bc -> :sswitch_8
        0x2bd -> :sswitch_8
        0x2be -> :sswitch_8
        0x2bf -> :sswitch_8
        0x320 -> :sswitch_9
        0x321 -> :sswitch_9
        0x322 -> :sswitch_9
        0x323 -> :sswitch_9
        0x324 -> :sswitch_9
        0x325 -> :sswitch_9
        0x326 -> :sswitch_9
        0x327 -> :sswitch_9
        0x384 -> :sswitch_e
        0x385 -> :sswitch_e
        0x386 -> :sswitch_e
        0x387 -> :sswitch_e
        0x388 -> :sswitch_e
        0x389 -> :sswitch_e
        0x38a -> :sswitch_e
        0x38b -> :sswitch_e
        0x38c -> :sswitch_e
        0x38d -> :sswitch_e
        0x38e -> :sswitch_e
        0x38f -> :sswitch_e
        0x390 -> :sswitch_e
        0x391 -> :sswitch_e
        0x3e8 -> :sswitch_f
        0x3e9 -> :sswitch_f
        0x3ea -> :sswitch_f
        0x3eb -> :sswitch_f
        0x3ec -> :sswitch_f
        0x3ed -> :sswitch_f
        0x3ee -> :sswitch_f
        0x3ef -> :sswitch_f
        0x3f0 -> :sswitch_f
        0x3f1 -> :sswitch_f
        0x3f2 -> :sswitch_f
        0x3f3 -> :sswitch_f
        0x3f4 -> :sswitch_f
        0x3f5 -> :sswitch_f
        0x3f6 -> :sswitch_f
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_f
        0x3f9 -> :sswitch_f
        0x3fa -> :sswitch_f
        0x3fb -> :sswitch_f
        0x3fc -> :sswitch_f
        0x3fd -> :sswitch_f
        0x3fe -> :sswitch_f
        0x3ff -> :sswitch_f
        0x400 -> :sswitch_f
        0x401 -> :sswitch_f
        0x402 -> :sswitch_f
        0x403 -> :sswitch_f
        0x404 -> :sswitch_f
        0x405 -> :sswitch_f
        0x406 -> :sswitch_f
        0x407 -> :sswitch_f
        0x408 -> :sswitch_f
        0x409 -> :sswitch_f
        0x40a -> :sswitch_f
        0x40b -> :sswitch_f
        0x40c -> :sswitch_f
        0x40d -> :sswitch_f
        0x40e -> :sswitch_f
        0x40f -> :sswitch_f
        0x44c -> :sswitch_10
        0x44d -> :sswitch_10
        0x44e -> :sswitch_10
        0x44f -> :sswitch_10
        0x450 -> :sswitch_10
        0x451 -> :sswitch_10
        0x452 -> :sswitch_10
        0x453 -> :sswitch_10
        0x454 -> :sswitch_10
        0x455 -> :sswitch_10
        0x456 -> :sswitch_10
        0x457 -> :sswitch_10
        0x458 -> :sswitch_10
        0x4b0 -> :sswitch_11
        0x4b1 -> :sswitch_11
        0x4b2 -> :sswitch_11
        0x578 -> :sswitch_12
        0x579 -> :sswitch_12
        0x57a -> :sswitch_12
        0x57b -> :sswitch_12
        0x5dc -> :sswitch_13
        0x5dd -> :sswitch_13
        0x5de -> :sswitch_13
        0x5df -> :sswitch_13
        0x6a4 -> :sswitch_14
        0x6a5 -> :sswitch_14
        0x6a6 -> :sswitch_14
        0x6a7 -> :sswitch_15
        0x6a8 -> :sswitch_15
        0x6a9 -> :sswitch_15
        0x708 -> :sswitch_16
        0x709 -> :sswitch_16
        0x70a -> :sswitch_16
        0x70b -> :sswitch_16
        0x76c -> :sswitch_17
        0x76d -> :sswitch_17
        0x76f -> :sswitch_17
        0x770 -> :sswitch_17
        0x7d0 -> :sswitch_1d
        0x7d1 -> :sswitch_1d
        0x7d3 -> :sswitch_1d
        0x7d4 -> :sswitch_1d
        0x834 -> :sswitch_1e
        0x835 -> :sswitch_1e
        0x898 -> :sswitch_21
        0x899 -> :sswitch_21
        0x89a -> :sswitch_21
        0x89b -> :sswitch_21
        0x8fc -> :sswitch_a
        0x8fd -> :sswitch_a
        0x8fe -> :sswitch_a
        0x8ff -> :sswitch_a
        0x900 -> :sswitch_a
        0x901 -> :sswitch_a
        0x902 -> :sswitch_a
        0x903 -> :sswitch_a
        0x904 -> :sswitch_a
        0x905 -> :sswitch_a
        0x906 -> :sswitch_a
        0x907 -> :sswitch_a
        0x908 -> :sswitch_a
        0x909 -> :sswitch_a
        0x90a -> :sswitch_a
        0x90b -> :sswitch_a
        0x90c -> :sswitch_a
        0x90d -> :sswitch_a
        0x90e -> :sswitch_a
        0x90f -> :sswitch_a
        0x910 -> :sswitch_a
        0x911 -> :sswitch_a
        0x912 -> :sswitch_a
        0x913 -> :sswitch_a
        0x914 -> :sswitch_a
        0x915 -> :sswitch_a
        0x916 -> :sswitch_a
        0x917 -> :sswitch_a
        0x918 -> :sswitch_a
        0x919 -> :sswitch_a
        0x91a -> :sswitch_a
        0x91b -> :sswitch_a
        0x91c -> :sswitch_a
        0xbb8 -> :sswitch_0
        0xbba -> :sswitch_0
        0xbbb -> :sswitch_0
        0xbbd -> :sswitch_0
        0xbc2 -> :sswitch_0
        0xbc3 -> :sswitch_0
        0xbc5 -> :sswitch_0
        0xbc6 -> :sswitch_0
        0xbc7 -> :sswitch_0
        0xbc8 -> :sswitch_0
        0xbc9 -> :sswitch_0
        0xbca -> :sswitch_23
        0xbcb -> :sswitch_0
        0xbcd -> :sswitch_0
        0xbce -> :sswitch_4
        0xbcf -> :sswitch_0
        0xbd0 -> :sswitch_0
        0xbd6 -> :sswitch_0
        0xbd7 -> :sswitch_0
        0xbd8 -> :sswitch_0
        0xbda -> :sswitch_22
        0xbdb -> :sswitch_0
        0xbdc -> :sswitch_0
        0xc1c -> :sswitch_24
        0xc1d -> :sswitch_24
        0xc1e -> :sswitch_24
        0xc1f -> :sswitch_24
        0xc20 -> :sswitch_24
        0xc80 -> :sswitch_25
        0xc81 -> :sswitch_25
        0xd48 -> :sswitch_7
        0xd49 -> :sswitch_7
        0xd4a -> :sswitch_7
        0xd4b -> :sswitch_7
        0xdac -> :sswitch_25
        0xdad -> :sswitch_25
        0xf3c -> :sswitch_1f
        0xf3d -> :sswitch_1f
        0x1068 -> :sswitch_4
        0x1069 -> :sswitch_4
        0x1130 -> :sswitch_20
        0x1131 -> :sswitch_20
        0x1132 -> :sswitch_20
        0x1133 -> :sswitch_20
        0x1134 -> :sswitch_20
        0x1135 -> :sswitch_20
        0x1136 -> :sswitch_20
        0x1194 -> :sswitch_26
        0x1195 -> :sswitch_26
        0x11f8 -> :sswitch_27
        0x11f9 -> :sswitch_27
        0x125c -> :sswitch_27
        0x125d -> :sswitch_27
        0x12c0 -> :sswitch_28
        0x12c1 -> :sswitch_28
        0x1324 -> :sswitch_19
        0x1325 -> :sswitch_19
        0x1326 -> :sswitch_19
        0x1327 -> :sswitch_19
        0x1388 -> :sswitch_18
        0x1389 -> :sswitch_18
        0x138a -> :sswitch_18
        0x138b -> :sswitch_18
    .end sparse-switch
.end method
