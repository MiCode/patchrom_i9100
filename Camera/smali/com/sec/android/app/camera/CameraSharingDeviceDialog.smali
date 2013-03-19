.class public Lcom/sec/android/app/camera/CameraSharingDeviceDialog;
.super Landroid/app/DialogFragment;
.source "CameraSharingDeviceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;,
        Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "CameraSharingDeviceDialog"


# instance fields
.field private final DIALOG_HEIGHT:I

.field private DeviceCheckStatus:[Z

.field private final MAX_USER:I

.field private final mSampleSize:I

.field private final mTitle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 45
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 48
    const v0, 0x7f080010

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DIALOG_HEIGHT:I

    .line 49
    iput v1, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->MAX_USER:I

    .line 50
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    .line 51
    const v0, 0x7f09011b

    iput v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->mTitle:I

    .line 52
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->mSampleSize:I

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    return-object v0
.end method


# virtual methods
.method public loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "mFilePath"

    .prologue
    .line 126
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 127
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 129
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 131
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserCount()I

    move-result v6

    .line 137
    .local v6, mDeviceCount:I
    new-array v7, v6, [Lcom/samsung/shareshot/User;

    .line 138
    .local v7, mDeviceData:[Lcom/samsung/shareshot/User;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v8, mDeviceList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;>;"
    new-array v5, v6, [Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;

    .line 141
    .local v5, mDevice:[Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;
    const-string v10, "CameraSharingDeviceDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mDeviceCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/Camera;

    iget-object v10, v10, Lcom/sec/android/app/camera/Camera;->mUserWrapper:Lcom/sec/android/app/camera/Camera$UserWrapper;

    invoke-virtual {v10, v3}, Lcom/sec/android/app/camera/Camera$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v10

    aput-object v10, v7, v3

    .line 144
    aget-object v10, v7, v3

    if-eqz v10, :cond_0

    .line 147
    const-string v10, "CameraSharingDeviceDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DeviceCheck = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DeviceCheckStatus:[Z

    aget-object v11, v7, v3

    invoke-virtual {v11}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v11

    aput-boolean v11, v10, v3

    .line 150
    new-instance v10, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;

    aget-object v11, v7, v3

    invoke-virtual {v11}, Lcom/samsung/shareshot/User;->getUserInfo()Lcom/samsung/dmc/ux/db/UserInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/dmc/ux/db/UserInfo;->getPersonInfo()Lcom/samsung/dmc/ux/db/PersonalSettingInfo;

    move-result-object v11

    invoke-virtual {v11}, Lcom/samsung/dmc/ux/db/PersonalSettingInfo;->getIconPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->loadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    aget-object v12, v7, v3

    invoke-virtual {v12}, Lcom/samsung/shareshot/User;->getName()Ljava/lang/String;

    move-result-object v12

    aget-object v13, v7, v3

    invoke-virtual {v13}, Lcom/samsung/shareshot/User;->isActivate()Z

    move-result v13

    invoke-direct {v10, p0, v11, v12, v13}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceList;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;Landroid/graphics/Bitmap;Ljava/lang/String;Z)V

    aput-object v10, v5, v3

    .line 152
    aget-object v10, v5, v3

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f030010

    invoke-direct {v0, p0, v10, v11, v8}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 157
    .local v0, device_adapter:Lcom/sec/android/app/camera/CameraSharingDeviceDialog$DeviceListAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v1, dialog:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f09011b

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->getView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 160
    const/4 v10, 0x0

    invoke-virtual {v1, v0, v10}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 162
    const v10, 0x7f09011a

    new-instance v11, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;

    invoke-direct {v11, p0}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$1;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v10, 0x7f090119

    new-instance v11, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;

    invoke-direct {v11, p0, v6, v7}, Lcom/sec/android/app/camera/CameraSharingDeviceDialog$2;-><init>(Lcom/sec/android/app/camera/CameraSharingDeviceDialog;I[Lcom/samsung/shareshot/User;)V

    invoke-virtual {v1, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    const/4 v10, 0x4

    if-le v6, v10, :cond_2

    .line 203
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 205
    .local v2, dialog2:Landroid/app/Dialog;
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v4}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 206
    .local v4, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 207
    const/4 v10, 0x2

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 208
    const/4 v10, -0x2

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 209
    iget v10, p0, Lcom/sec/android/app/camera/CameraSharingDeviceDialog;->DIALOG_HEIGHT:I

    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 210
    const v10, 0x3f333333

    iput v10, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 212
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 213
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    .line 214
    .local v9, window:Landroid/view/Window;
    invoke-virtual {v9}, Landroid/view/Window;->getContainer()Landroid/view/Window;

    .line 215
    invoke-virtual {v9, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 216
    new-instance v10, Landroid/graphics/drawable/ColorDrawable;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v9, v10}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .end local v2           #dialog2:Landroid/app/Dialog;
    .end local v4           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v9           #window:Landroid/view/Window;
    :goto_1
    return-object v2

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_1
.end method
