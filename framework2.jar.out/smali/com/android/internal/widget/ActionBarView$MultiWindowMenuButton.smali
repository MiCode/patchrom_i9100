.class Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;
.super Landroid/widget/ImageButton;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiWindowMenuButton"
.end annotation


# static fields
.field private static final BACKGROUND_MULTI_WINDOW_MENU:Ljava/lang/String; = "com.sec.android.multiwindow.actionMultiWindowButtonBackground"

.field private static final DRAWABLE_MULTI_WINDOW_MENU:Ljava/lang/String; = "com.sec.android.multiwindow.actionMultiWindowButtonDrawable"


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ActionBarView;Landroid/content/Context;)V
    .locals 15
    .parameter
    .parameter "context"

    .prologue
    .line 1852
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->this$0:Lcom/android/internal/widget/ActionBarView;

    .line 1853
    const/4 v13, 0x0

    const v14, 0x10103c9

    move-object/from16 v0, p2

    invoke-direct {p0, v0, v13, v14}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1855
    move-object/from16 v0, p2

    instance-of v13, v0, Landroid/app/Activity;

    if-eqz v13, :cond_4

    move-object/from16 v1, p2

    .line 1856
    check-cast v1, Landroid/app/Activity;

    .line 1857
    .local v1, a:Landroid/app/Activity;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1862
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 1863
    .local v10, mIconDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 1864
    .local v9, mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v12, 0x0

    .line 1867
    .local v12, resources:Landroid/content/res/Resources;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 1868
    .local v6, cpInfo:Landroid/content/pm/ComponentInfo;
    if-eqz v6, :cond_1

    .line 1870
    :try_start_1
    iget-object v13, v6, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v11, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v12

    .line 1871
    iget-object v2, v6, Landroid/content/pm/ComponentInfo;->metaData:Landroid/os/Bundle;

    .line 1873
    .local v2, activityMetaData:Landroid/os/Bundle;
    if-eqz v2, :cond_1

    .line 1874
    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonDrawable"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1875
    .local v8, iconId:I
    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonBackground"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1878
    .local v5, backcgroundId:I
    :try_start_2
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1879
    if-eqz v10, :cond_0

    .line 1880
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1886
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1887
    if-eqz v9, :cond_1

    .line 1888
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1902
    .end local v2           #activityMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v6           #cpInfo:Landroid/content/pm/ComponentInfo;
    .end local v8           #iconId:I
    :cond_1
    :goto_1
    if-eqz v10, :cond_2

    if-nez v9, :cond_4

    .line 1904
    :cond_2
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x80

    invoke-virtual {v11, v13, v14}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 1905
    .local v3, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_4

    .line 1906
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 1907
    .local v4, applicationMetaData:Landroid/os/Bundle;
    if-eqz v4, :cond_4

    .line 1908
    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonDrawable"

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1909
    .restart local v8       #iconId:I
    const-string v13, "com.sec.android.multiwindow.actionMultiWindowButtonBackground"

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    move-result v5

    .line 1911
    .restart local v5       #backcgroundId:I
    if-eqz v12, :cond_4

    .line 1912
    if-nez v10, :cond_3

    .line 1914
    :try_start_5
    invoke-virtual {v12, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1915
    if-eqz v10, :cond_3

    .line 1916
    invoke-virtual {p0, v10}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1922
    :cond_3
    :goto_2
    if-nez v9, :cond_4

    .line 1924
    :try_start_6
    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1925
    if-eqz v9, :cond_4

    .line 1926
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1941
    .end local v1           #a:Landroid/app/Activity;
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #applicationMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v8           #iconId:I
    .end local v9           #mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .end local v10           #mIconDrawable:Landroid/graphics/drawable/Drawable;
    .end local v11           #pm:Landroid/content/pm/PackageManager;
    .end local v12           #resources:Landroid/content/res/Resources;
    :cond_4
    :goto_3
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setClickable(Z)V

    .line 1942
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setLongClickable(Z)V

    .line 1943
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setFocusable(Z)V

    .line 1944
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setVisibility(I)V

    .line 1945
    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->setEnabled(Z)V

    .line 1946
    return-void

    .line 1882
    .restart local v1       #a:Landroid/app/Activity;
    .restart local v2       #activityMetaData:Landroid/os/Bundle;
    .restart local v5       #backcgroundId:I
    .restart local v6       #cpInfo:Landroid/content/pm/ComponentInfo;
    .restart local v8       #iconId:I
    .restart local v9       #mBackgroundDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v10       #mIconDrawable:Landroid/graphics/drawable/Drawable;
    .restart local v11       #pm:Landroid/content/pm/PackageManager;
    .restart local v12       #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v7

    .line 1883
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_7
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button icon is not provided on activity meta-data. Default icon will be used."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 1894
    .end local v2           #activityMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #iconId:I
    :catch_1
    move-exception v7

    .line 1895
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_8
    const-string v13, "ActionBarView"

    const-string v14, "application resource not found!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 1898
    .end local v6           #cpInfo:Landroid/content/pm/ComponentInfo;
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_2
    move-exception v7

    .line 1899
    .restart local v7       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "ActionBarView"

    const-string v14, "Activity component name not found!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1890
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2       #activityMetaData:Landroid/os/Bundle;
    .restart local v5       #backcgroundId:I
    .restart local v6       #cpInfo:Landroid/content/pm/ComponentInfo;
    .restart local v8       #iconId:I
    :catch_3
    move-exception v7

    .line 1891
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_9
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button BG is not provided on activity meta-data. Default BG will be used."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 1918
    .end local v2           #activityMetaData:Landroid/os/Bundle;
    .end local v6           #cpInfo:Landroid/content/pm/ComponentInfo;
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v3       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #applicationMetaData:Landroid/os/Bundle;
    :catch_4
    move-exception v7

    .line 1919
    .restart local v7       #e:Landroid/content/res/Resources$NotFoundException;
    :try_start_a
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button icon is not provided on application meta-data. Default icon will be used"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    .line 1935
    .end local v3           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v4           #applicationMetaData:Landroid/os/Bundle;
    .end local v5           #backcgroundId:I
    .end local v7           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v8           #iconId:I
    :catch_5
    move-exception v7

    .line 1936
    .local v7, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "ActionBarView"

    const-string v14, "application package name not found!"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1928
    .end local v7           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v4       #applicationMetaData:Landroid/os/Bundle;
    .restart local v5       #backcgroundId:I
    .restart local v8       #iconId:I
    :catch_6
    move-exception v7

    .line 1929
    .local v7, e:Landroid/content/res/Resources$NotFoundException;
    :try_start_b
    const-string v13, "ActionBarView"

    const-string v14, "Multi window menu button BG is not provided on application meta-data. Default BG will be used"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_3
.end method


# virtual methods
.method public performClick()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1950
    invoke-super {p0}, Landroid/widget/ImageButton;->performClick()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1973
    :cond_0
    :goto_0
    return v4

    .line 1954
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->playSoundEffect(I)V

    .line 1956
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->this$0:Lcom/android/internal/widget/ActionBarView;

    #calls: Lcom/android/internal/widget/ActionBarView;->getWindowMode()I
    invoke-static {v3}, Lcom/android/internal/widget/ActionBarView;->access$1500(Lcom/android/internal/widget/ActionBarView;)I

    move-result v2

    .line 1957
    .local v2, windowMode:I
    const/4 v0, 0x0

    .line 1958
    .local v0, arrangeMode:I
    const v3, 0xffffff

    and-int/2addr v2, v3

    .line 1959
    const/high16 v3, 0x200

    or-int/2addr v2, v3

    .line 1960
    const v3, -0x800001

    and-int/2addr v2, v3

    .line 1961
    const v3, -0x100001

    and-int/2addr v2, v3

    .line 1963
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 1964
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->setWindowMode(IZ)V

    .line 1965
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->arrange:I

    and-int/lit16 v0, v3, -0x401

    .line 1966
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindowInfo()Landroid/os/Bundle;

    move-result-object v1

    .line 1967
    .local v1, winInfo:Landroid/os/Bundle;
    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 1968
    const-string v3, "android.intent.extra.WINDOW_OUT_OF_ARRANGE"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1970
    :cond_2
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->setWindowInfo(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 14

    .prologue
    const/16 v13, 0x35

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1978
    invoke-super {p0}, Landroid/widget/ImageButton;->performLongClick()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2007
    :goto_0
    return v11

    .line 1982
    :cond_0
    const/4 v8, 0x2

    new-array v5, v8, [I

    .line 1983
    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1984
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->getLocationOnScreen([I)V

    .line 1985
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1987
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1988
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->getWidth()I

    move-result v7

    .line 1989
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->getHeight()I

    move-result v3

    .line 1990
    .local v3, height:I
    aget v8, v5, v11

    div-int/lit8 v9, v3, 0x2

    add-int v4, v8, v9

    .line 1991
    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1993
    .local v6, screenWidth:I
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v1, v8, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 1995
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v9, 0x2d0

    if-lt v8, v9, :cond_1

    .line 1996
    aget v8, v5, v12

    sub-int v8, v6, v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget v9, v5, v11

    add-int/2addr v9, v3

    invoke-virtual {v0, v13, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 2004
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2005
    invoke-virtual {p0, v12}, Lcom/android/internal/widget/ActionBarView$MultiWindowMenuButton;->performHapticFeedback(I)Z

    goto :goto_0

    .line 2000
    :cond_1
    aget v8, v5, v12

    sub-int v8, v6, v8

    div-int/lit8 v9, v7, 0x2

    sub-int/2addr v8, v9

    aget v9, v5, v11

    add-int/2addr v9, v3

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {v0, v13, v8, v9}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method
