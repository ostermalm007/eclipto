<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddColumnsToDocumentVerificationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('document_verifications', function (Blueprint $table)
        {
            $table->string('address_line_1')->nullable()->after('identity_number');
            $table->string('address_line_2')->nullable()->after('address_line_1');
            $table->string('zip_code')->nullable()->after('address_line_2');
            $table->string('city')->nullable()->after('zip_code');
            $table->string('state')->nullable()->after('city');
            $table->string('country')->nullable()->after('state'); 
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('document_verifications', function (Blueprint $table)
        {
            $table->dropColumn('picture');
        });
    }
}
