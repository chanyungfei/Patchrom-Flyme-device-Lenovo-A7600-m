.class Lcom/lenovo/settings/search/SearchResultsSummary$2;
.super Ljava/lang/Object;
.source "SearchResultsSummary.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/settings/search/SearchResultsSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/settings/search/SearchResultsSummary;


# direct methods
.method constructor <init>(Lcom/lenovo/settings/search/SearchResultsSummary;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/lenovo/settings/search/SearchResultsSummary$2;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 24
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    add-int/lit8 p3, p3, -0x1

    .line 106
    if-gez p3, :cond_0

    .line 169
    :goto_0
    return-void

    .line 110
    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/settings/search/SearchResultsSummary$2;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary;->mResultsAdapter:Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;
    invoke-static {v6}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$100(Lcom/lenovo/settings/search/SearchResultsSummary;)Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;

    move-result-object v6

    # getter for: Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v6}, Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;->access$200(Lcom/lenovo/settings/search/SearchResultsSummary$SearchResultsAdapter;)Landroid/database/Cursor;

    move-result-object v19

    .line 111
    .local v19, "cursor":Landroid/database/Cursor;
    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 113
    const/4 v6, 0x6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "className":Ljava/lang/String;
    const/4 v6, 0x7

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "screenTitle":Ljava/lang/String;
    const/16 v6, 0x9

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, "action":Ljava/lang/String;
    const/16 v6, 0xd

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 118
    .local v21, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/settings/search/SearchResultsSummary$2;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    invoke-virtual {v6}, Lcom/lenovo/settings/search/SearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings/SettingsActivity;

    .line 121
    .local v3, "sa":Lcom/android/settings/SettingsActivity;
    const-string v6, "toggle_airplane"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "data_connect_settings"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "mobile_4g_settings"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/settings/search/SearchResultsSummary$2;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # invokes: Lcom/lenovo/settings/search/SearchResultsSummary;->saveQueryToDatabase()V
    invoke-static {v6}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$300(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    .line 125
    const/4 v6, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v3, v6, v0}, Lcom/android/settings/SettingsActivity;->revertToInitialFragment(ZLjava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 130
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v5, "args":Landroid/os/Bundle;
    const-string v6, ":settings:fragment_args_key"

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    .line 166
    .end local v5    # "args":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lenovo/settings/search/SearchResultsSummary$2;->this$0:Lcom/lenovo/settings/search/SearchResultsSummary;

    # invokes: Lcom/lenovo/settings/search/SearchResultsSummary;->saveQueryToDatabase()V
    invoke-static {v6}, Lcom/lenovo/settings/search/SearchResultsSummary;->access$300(Lcom/lenovo/settings/search/SearchResultsSummary;)V

    goto/16 :goto_0

    .line 137
    :cond_3
    const/4 v11, 0x0

    .line 138
    .local v11, "mappingClassName":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-static/range {v21 .. v21}, Lcom/lenovo/settings/search/SearchPluginMapping;->getPluginEntranceClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 140
    invoke-static/range {v21 .. v21}, Lcom/lenovo/settings/search/SearchPluginMapping;->getPluginScreenTitle(Ljava/lang/String;)I

    move-result v15

    .line 141
    .local v15, "newScreenTitle":I
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 142
    .restart local v5    # "args":Landroid/os/Bundle;
    const-string v6, ":settings:fragment_args_key"

    move-object/from16 v0, v21

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v3

    move-object v12, v5

    move-object/from16 v16, v9

    invoke-static/range {v10 .. v16}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    goto :goto_1

    .line 146
    .end local v5    # "args":Landroid/os/Bundle;
    .end local v15    # "newScreenTitle":I
    :cond_4
    new-instance v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v20, "intent":Landroid/content/Intent;
    const/16 v6, 0xa

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 149
    .local v23, "targetPackage":Ljava/lang/String;
    const/16 v6, 0xb

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 152
    .local v22, "targetClass":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 153
    new-instance v18, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .local v18, "component":Landroid/content/ComponentName;
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    .end local v18    # "component":Landroid/content/ComponentName;
    :cond_5
    const-string v6, ":settings:fragment_args_key"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v6, "wifi_settings"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 159
    const-string v6, "home_as_up_enabled"

    const/4 v7, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    :cond_6
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method
