require 'spec_helper'

describe User do
  before(:each) do
    @user = User.new(username: "sheep",
                     email: "sheep@sheep.com",
                     role: 'user',
                     password: "neatmeat",
                     password_confirmation: "neatmeat")
  end

  it "should fail validate if username is blank" do
    @user.username = ''
    expect(@user.valid?).to eq(false)
  end

  it "should pass validate if username contains no illegal characters" do
    expect(@user.valid?).to eq(true)
  end

  it "should fail validate if username contains fewer than 4 characters" do
    @user.username = "abc"
    expect(@user.valid?).to eq(false)
  end

  it "should fail validate if username contains more than 16 characters" do
    @user.username = "abcdabcdabcdabcda"
    expect(@user.valid?).to eq(false)
  end

  it "should fail validate if username contains illegal characters" do
    @user.username = 'sheep&%'
    expect(@user.valid?).to eq(false)
  end

  it "should fail if username is not unique" do
    @user.save!
    @dup_user = @user.dup
    expect(@dup_user.valid?).to eq(false)
  end

  it "should fail validate if email is blank" do
    @user.email = ''
    expect(@user.valid?).to eq(false)
  end

  it "should fail validate if email is not of form 'a@b.c'" do
    @user.email = 'not_valid'
    expect(@user.valid?).to eq(false)
  end

  it "should fail validate if role is blank" do
    @user.role = ''
    expect(@user.valid?).to eq(false)
  end

  it "should fail validate if role  is not user or admin" do
    @user.role = 'illegal'
    expect(@user.valid?).to eq(false)
  end

  it "should fail if password and confirmation do not match" do
    @user.password_confirmation = "meatmeat"
    expect(@user.valid?).to eq(false)
  end

  it "should fail if password is less than 8 characters" do
    @user.password = "meatmea"
    @user.password_confirmation = "meatmea"
    expect(@user.valid?).to eq(false)
  end

end
