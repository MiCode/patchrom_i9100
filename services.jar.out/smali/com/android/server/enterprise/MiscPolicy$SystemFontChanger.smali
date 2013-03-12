.class Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/MiscPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 959
    iput-object p1, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 961
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/MiscPolicy;Lcom/android/server/enterprise/MiscPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 959
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;-><init>(Lcom/android/server/enterprise/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 24
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 1016
    const/16 v17, 0x0

    .line 1020
    .local v17, ret:Z
    if-eqz p2, :cond_0

    .line 1022
    const/4 v13, 0x0

    .line 1023
    .local v13, installState:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "enterprise_policy"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1025
    .local v5, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v21

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/ApplicationPolicy;->installApplication(Ljava/lang/String;Z)Z

    move-result v13

    .line 1026
    if-nez v13, :cond_0

    .line 1027
    const-string v21, "MiscPolicy"

    const-string v22, "changeFont():New font install failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1111
    .end local v5           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    .end local v13           #installState:Z
    .end local v17           #ret:Z
    :goto_0
    return v17

    .line 1030
    .restart local v13       #installState:Z
    .restart local v17       #ret:Z
    :catch_0
    move-exception v4

    .line 1031
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1036
    .end local v4           #e:Ljava/lang/Exception;
    .end local v13           #installState:Z
    :cond_0
    new-instance v8, Lcom/android/server/enterprise/FontWriter;

    invoke-direct {v8}, Lcom/android/server/enterprise/FontWriter;-><init>()V

    .line 1037
    .local v8, fontWriter:Lcom/android/server/enterprise/FontWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 1040
    .local v15, packageManager:Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 1041
    .local v12, index:I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v14

    .line 1043
    .local v14, installedFontList:[Ljava/lang/String;
    if-nez v14, :cond_1

    .line 1044
    const-string v21, "MiscPolicy"

    const-string v22, "changeFont():Installed font list is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1048
    :cond_1
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    array-length v0, v14

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v10, v0, :cond_2

    .line 1049
    aget-object v21, v14, v10

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 1050
    move v12, v10

    .line 1051
    const-string v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "index"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_2
    const-string v21, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "sans.loc"

    const-string v23, "default"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/enterprise/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    aget-object v21, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1061
    const-string v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "default font is selected..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 1048
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1065
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/Typeface;

    move-result-object v18

    .line 1066
    .local v18, sansTypeface:Lcom/android/server/enterprise/Typeface;
    if-nez v18, :cond_5

    .line 1067
    const-string v21, "MiscPolicy"

    const-string v22, "change font failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1071
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1072
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v19

    .line 1075
    .local v19, selectedFont:Ljava/lang/String;
    const-string v21, ".xml"

    const-string v22, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1077
    .local v9, fontdir:Ljava/lang/String;
    const-string v21, " "

    const-string v22, "-"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v0, v9}, Lcom/android/server/enterprise/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 1080
    .local v7, fontDir:Ljava/io/File;
    if-nez v7, :cond_6

    .line 1081
    const-string v21, "MiscPolicy"

    const-string v22, "create fontDir object is null "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 1087
    :cond_6
    const/16 v20, 0x0

    .line 1088
    .local v20, tpf:Lcom/android/server/enterprise/TypefaceFile;
    if-eqz v18, :cond_7

    .line 1089
    const/4 v10, 0x0

    :goto_2
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v10, v0, :cond_7

    .line 1090
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/enterprise/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20           #tpf:Lcom/android/server/enterprise/TypefaceFile;
    check-cast v20, Lcom/android/server/enterprise/TypefaceFile;

    .line 1094
    .restart local v20       #tpf:Lcom/android/server/enterprise/TypefaceFile;
    :try_start_1
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v16

    .line 1095
    .local v16, res:Landroid/content/res/Resources;
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    .line 1097
    .local v3, assetManager:Landroid/content/res/AssetManager;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "fonts/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 1098
    .local v11, in:Ljava/io/InputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v8, v7, v11, v0}, Lcom/android/server/enterprise/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1089
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1100
    .end local v3           #assetManager:Landroid/content/res/AssetManager;
    .end local v11           #in:Ljava/io/InputStream;
    .end local v16           #res:Landroid/content/res/Resources;
    :catch_1
    move-exception v6

    .line 1101
    .local v6, ex:Ljava/lang/Exception;
    const-string v21, "MiscPolicy"

    const-string v22, "changeFont():Exception"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const-string v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1108
    .end local v6           #ex:Ljava/lang/Exception;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string v22, "sans.loc"

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v8, v0, v1, v2}, Lcom/android/server/enterprise/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/enterprise/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v12}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->savePreferences(Ljava/lang/String;I)V

    .line 1110
    const-string v21, "MiscPolicy"

    const-string v22, "change font:Done"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method private getFontString()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 1154
    const/4 v2, 0x0

    .line 1155
    .local v2, retString:[Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getFontsVector()Ljava/util/Vector;

    move-result-object v0

    .line 1156
    .local v0, fontNames:Ljava/util/Vector;
    if-nez v0, :cond_0

    .line 1157
    const/4 v3, 0x0

    .line 1164
    :goto_0
    return-object v3

    .line 1158
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1162
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 1164
    goto :goto_0
.end method

.method private getFontsVector()Ljava/util/Vector;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1168
    iput-object v12, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

    .line 1169
    new-instance v11, Lcom/android/server/enterprise/TypefaceFinder;

    invoke-direct {v11}, Lcom/android/server/enterprise/TypefaceFinder;-><init>()V

    iput-object v11, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

    .line 1170
    const-string v0, "com.monotype.android.font."

    .line 1172
    .local v0, FONT_PACKAGE:Ljava/lang/String;
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 1174
    .local v5, fontPackageNames:Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 1176
    .local v3, fontNames:Ljava/util/Vector;
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 1177
    .local v10, typefaceFiles:Ljava/util/Vector;
    const/4 v2, 0x0

    .line 1179
    .local v2, fontAssetManager:Landroid/content/res/AssetManager;
    const/4 v8, 0x0

    .line 1180
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    .line 1181
    .local v7, installedApplications:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v11, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 1183
    const/16 v11, 0x80

    :try_start_0
    invoke-virtual {v8, v11}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v7

    .line 1186
    const/4 v4, 0x0

    .line 1187
    .local v4, fontPackageName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v6, v11, :cond_1

    .line 1188
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1189
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1190
    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v9

    .line 1191
    .local v9, res:Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    .line 1192
    iget-object v11, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

    invoke-virtual {v11, v2, v4}, Lcom/android/server/enterprise/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 1187
    .end local v9           #res:Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    iget-object v11, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->mTypefaceFinder:Lcom/android/server/enterprise/TypefaceFinder;

    invoke-virtual {v11, v3, v10, v5}, Lcom/android/server/enterprise/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    .end local v3           #fontNames:Ljava/util/Vector;
    .end local v4           #fontPackageName:Ljava/lang/String;
    .end local v6           #i:I
    :goto_1
    return-object v3

    .line 1197
    .restart local v3       #fontNames:Ljava/util/Vector;
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    move-object v3, v12

    .line 1198
    goto :goto_1
.end method


# virtual methods
.method public getActiveFontPosition()I
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1126
    const-string v5, "MiscPolicy"

    const-string v6, "getActiveFontPosition():getting active font position:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    const/4 v1, 0x0

    .line 1128
    .local v1, mode:I
    const/4 v3, 0x0

    .line 1130
    .local v3, settingContext:Landroid/content/Context;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "com.android.settings"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1137
    :goto_0
    if-nez v3, :cond_0

    .line 1138
    const-string v5, "MiscPolicy"

    const-string v6, "Setting Context is Null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :goto_1
    return v4

    .line 1132
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1142
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const-string v5, "prefs"

    invoke-virtual {v3, v5, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1145
    .local v2, mySharedPreference:Landroid/content/SharedPreferences;
    const-string v5, "SavedClickedItem"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    goto :goto_1
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1115
    const-string v2, "MiscPolicy"

    const-string v3, "getSystemActiveFont():getting active system font:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-virtual {p0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getActiveFontPosition()I

    move-result v1

    .line 1117
    .local v1, position:I
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getActiveFontPosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    invoke-virtual {p0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    .line 1119
    .local v0, fonts:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1120
    aget-object v2, v0, v1

    .line 1122
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1149
    const-string v0, "MiscPolicy"

    const-string v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    invoke-direct {p0}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .locals 10
    .parameter "fontName"
    .parameter "position"

    .prologue
    .line 1204
    const/4 v3, 0x0

    .line 1205
    .local v3, mode:I
    const/4 v6, 0x0

    .line 1208
    .local v6, settingContext:Landroid/content/Context;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.settings"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 1214
    :goto_0
    if-nez v6, :cond_0

    .line 1215
    const-string v7, "MiscPolicy"

    const-string v8, "Setting Context is Null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :goto_1
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1219
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v7, "prefs"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1222
    .local v4, mySharedPreference:Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1223
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "SavedClickedItem"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1225
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1227
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1228
    .local v5, prefName:Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1229
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1230
    .local v2, editor1:Landroid/content/SharedPreferences$Editor;
    const-string v7, "MONOTYPE"

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1231
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 21
    .parameter "fontName"
    .parameter "apkPath"

    .prologue
    .line 963
    const-string v19, "MiscPolicy"

    const-string v20, "setSystemActiveFont():Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const/4 v15, 0x0

    .line 966
    .local v15, ret:Z
    if-nez p1, :cond_0

    .line 967
    const-string v19, "MiscPolicy"

    const-string v20, "setSystemActiveFont():Invalid input"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v15

    .line 1012
    :goto_0
    return v19

    .line 971
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 972
    if-nez v15, :cond_1

    .line 973
    const/16 v19, 0x0

    goto :goto_0

    .line 976
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 977
    .local v17, token:J
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 978
    .local v5, am:Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 979
    .local v6, config:Landroid/content/res/Configuration;
    new-instance v14, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-direct {v14, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 980
    .local v14, randomizer:Ljava/util/Random;
    const/4 v13, 0x0

    .line 981
    .local v13, min:I
    const/16 v12, 0x2710

    .line 985
    .local v12, max:I
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 986
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 998
    .local v10, identity:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/MiscPolicy$SystemFontChanger;->this$0:Lcom/android/server/enterprise/MiscPolicy;

    move-object/from16 v19, v0

    #getter for: Lcom/android/server/enterprise/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v19 .. v19}, Lcom/android/server/enterprise/MiscPolicy;->access$700(Lcom/android/server/enterprise/MiscPolicy;)Landroid/content/Context;

    move-result-object v19

    const-string v20, "activity"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1000
    .local v3, activityManager:Landroid/app/ActivityManager;
    const/16 v19, 0x32

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1001
    .local v4, allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v8, 0x1

    .line 1002
    .local v8, i:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1003
    .local v2, aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 1007
    .local v16, s:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 990
    .end local v2           #aTask:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3           #activityManager:Landroid/app/ActivityManager;
    .end local v4           #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5           #am:Landroid/app/IActivityManager;
    .end local v6           #config:Landroid/content/res/Configuration;
    .end local v8           #i:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #identity:J
    .end local v12           #max:I
    .end local v13           #min:I
    .end local v14           #randomizer:Ljava/util/Random;
    .end local v16           #s:Ljava/lang/String;
    .end local v17           #token:J
    :catch_0
    move-exception v7

    .line 991
    .local v7, e:Ljava/lang/Exception;
    const-string v19, "MiscPolicy"

    const-string v20, "setSystemActiveFont():Exception"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const/16 v19, 0x0

    goto :goto_0

    .line 1011
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v3       #activityManager:Landroid/app/ActivityManager;
    .restart local v4       #allTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v6       #config:Landroid/content/res/Configuration;
    .restart local v8       #i:I
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v10       #identity:J
    .restart local v12       #max:I
    .restart local v13       #min:I
    .restart local v14       #randomizer:Ljava/util/Random;
    .restart local v17       #token:J
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v19, v15

    .line 1012
    goto :goto_0
.end method
