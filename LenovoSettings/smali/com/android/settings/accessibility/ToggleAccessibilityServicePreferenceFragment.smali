.class public Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;
.super Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleAccessibilityServicePreferenceFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final DIALOG_ID_DISABLE_WARNING:I = 0x2

.field private static final DIALOG_ID_ENABLE_WARNING:I = 0x1


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private final mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

.field private mShownDialogId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$1;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$200(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;
    .locals 18
    .param p1, "info"    # Landroid/accessibilityservice/AccessibilityServiceInfo;

    .prologue
    .line 196
    const-string v13, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 199
    .local v11, "inflater":Landroid/view/LayoutInflater;
    const v13, 0x7f04005a

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 202
    .local v7, "content":Landroid/view/View;
    const v13, 0x7f0e013a

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 204
    .local v2, "capabilitiesHeaderView":Landroid/widget/TextView;
    const v13, 0x7f0a0a23

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    const v13, 0x7f0e013b

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 210
    .local v3, "capabilitiesView":Landroid/widget/LinearLayout;
    const v13, 0x7f04000d

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 212
    .local v6, "capabilityView":Landroid/view/View;
    const v13, 0x7f0e0022

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 213
    .local v10, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200fb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    const v13, 0x7f0e0023

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 216
    .local v12, "labelView":Landroid/widget/TextView;
    const v13, 0x7f0a0a24

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    const v13, 0x7f0e0024

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 219
    .local v8, "descriptionView":Landroid/widget/TextView;
    const v13, 0x7f0a0a25

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual/range {p1 .. p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getCapabilityInfos()Ljava/util/List;

    move-result-object v1

    .line 224
    .local v1, "capabilities":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;>;"
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    .line 228
    .local v5, "capabilityCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v5, :cond_0

    .line 229
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;

    .line 231
    .local v4, "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    const v13, 0x7f04000d

    const/4 v14, 0x0

    invoke-virtual {v11, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 233
    const v13, 0x7f0e0022

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "imageView":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 234
    .restart local v10    # "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0200fb

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    const v13, 0x7f0e0023

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12    # "labelView":Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 237
    .restart local v12    # "labelView":Landroid/widget/TextView;
    iget v13, v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->titleResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    const v13, 0x7f0e0024

    invoke-virtual {v6, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "descriptionView":Landroid/widget/TextView;
    check-cast v8, Landroid/widget/TextView;

    .line 240
    .restart local v8    # "descriptionView":Landroid/widget/TextView;
    iget v13, v4, Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;->descResId:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 228
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 245
    .end local v4    # "capability":Landroid/accessibilityservice/AccessibilityServiceInfo$CapabilityInfo;
    :cond_0
    return-object v7
.end method

.method private getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 7

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v4

    .line 141
    .local v4, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 142
    .local v3, "serviceInfoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 143
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 144
    .local v2, "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 145
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :goto_1
    return-object v2

    .line 142
    .restart local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "serviceInfo":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 251
    packed-switch p2, :pswitch_data_0

    .line 265
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 253
    :pswitch_0
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    if-ne v2, v0, :cond_0

    .line 254
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 256
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 267
    :goto_1
    return-void

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 253
    goto :goto_0

    .line 259
    :pswitch_1
    iget v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 260
    .restart local v0    # "checked":Z
    :goto_2
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    invoke-virtual {v1, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;->setCheckedInternal(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "checked"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    iget-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    goto :goto_1

    .end local v0    # "checked":Z
    :cond_1
    move v0, v1

    .line 259
    goto :goto_2

    .line 251
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 11
    .param p1, "dialogId"    # I

    .prologue
    const v10, 0x104000a

    const/high16 v9, 0x1040000

    const v8, 0x1010355

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 157
    :pswitch_0
    iput v6, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 158
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 159
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x0

    .line 178
    :goto_0
    return-object v1

    .line 162
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0a22

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->createEnableDialogContentView(Landroid/accessibilityservice/AccessibilityServiceInfo;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 173
    .end local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :pswitch_1
    const/4 v1, 0x2

    iput v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mShownDialogId:I

    .line 174
    invoke-direct {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getAccessibilityServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 175
    .restart local v0    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    if-nez v0, :cond_1

    .line 176
    const/4 v1, 0x0

    goto :goto_0

    .line 178
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a0a26

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0a27

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {p0, v2, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onInstallActionBarToggleSwitch()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onInstallActionBarToggleSwitch()V

    .line 272
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mToggleSwitch:Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;

    new-instance v1, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment$2;-><init>(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/flyme/deviceoriginalsettings/accessibility/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 287
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 77
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 78
    return-void
.end method

.method public onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 11
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 86
    .local v2, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v8

    if-ne v2, v8, :cond_0

    .line 87
    new-instance v2, Ljava/util/HashSet;

    .end local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 91
    .restart local v2    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 92
    .local v7, "toggledService":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 93
    .local v0, "accessibilityEnabled":Z
    if-eqz p2, :cond_2

    .line 94
    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x1

    .line 111
    :cond_1
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v3, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 117
    .local v1, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const/16 v8, 0x3a

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 98
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    .end local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 100
    sget-object v6, Lcom/flyme/deviceoriginalsettings/accessibility/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 101
    .local v6, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 102
    .restart local v1    # "enabledService":Landroid/content/ComponentName;
    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 104
    const/4 v0, 0x1

    .line 105
    goto :goto_0

    .line 121
    .end local v1    # "enabledService":Landroid/content/ComponentName;
    .end local v6    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v3    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    .line 122
    .local v4, "enabledServicesBuilderLength":I
    if-lez v4, :cond_5

    .line 123
    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 125
    :cond_5
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "enabled_accessibility_services"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 130
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "accessibility_enabled"

    if-eqz v0, :cond_6

    const/4 v8, 0x1

    :goto_2
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 132
    return-void

    .line 130
    :cond_6
    const/4 v8, 0x0

    goto :goto_2
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 293
    const-string v3, "settings_title"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "settingsTitle":Ljava/lang/String;
    const-string v3, "settings_component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "settingsComponentName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 297
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 299
    .local v1, "settingsIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 300
    iput-object v2, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    .line 301
    iput-object v1, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    .line 302
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->setHasOptionsMenu(Z)V

    .line 306
    .end local v1    # "settingsIntent":Landroid/content/Intent;
    :cond_0
    const-string v3, "component_name"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mComponentName:Landroid/content/ComponentName;

    .line 307
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->mSettingsContentObserver:Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleAccessibilityServicePreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flyme/deviceoriginalsettings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 71
    invoke-super {p0}, Lcom/flyme/deviceoriginalsettings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 72
    return-void
.end method
