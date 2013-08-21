require 'spec_helper'

describe LinkedList do
  before :each do
    @linked_list = LinkedList.new
  end


  describe "#new" do
    it "returns a linked_list object" do
      @linked_list.should be_an_instance_of LinkedList
    end
  end

  describe "#insert" do
    it "should return nil when empty" do
      @linked_list.get(0).should == nil
    end

    it "insert one value and get it" do
      @linked_list.insert(10)
      @linked_list.get(0).should == 10
    end

    it "should return nil when index does not exist" do
      @linked_list.insert(10)
      @linked_list.insert(11)
      @linked_list.get(2).should == nil
    end

    it "insert two values and grab the second one" do
      @linked_list.insert(10)
      @linked_list.insert(24)
      @linked_list.get(1).should == 24
    end

    it "insert many values and grab one at the end" do
      @linked_list.insert(10)
      @linked_list.insert(21)
      @linked_list.insert(15)
      @linked_list.insert(4)
      @linked_list.get(2).should == 15
    end
  end

  describe "#delete" do
    it "should not delete when empty" do
      @linked_list.delete(0).should == nil
    end

    it "should delete only element and return a Null list" do
      @linked_list.insert(10)
      @linked_list.delete(0)
      @linked_list.head_of_list.should == nil
    end

    it " should not delte at index lower than 0" do
      @linked_list.insert(10)
      @linked_list.delete(-1).should == nil
    end

    it "should delete first element and keep list intact" do
      @linked_list.insert(5)
      @linked_list.insert(10)
      @linked_list.insert(15)
      @linked_list.delete(1)
      @linked_list.get(1).should == 15
    end

    it "should be to delete end" do
      @linked_list.insert(1)
      @linked_list.insert(2)
      @linked_list.insert(3)
      @linked_list.delete(2)
      @linked_list.insert(4)
      @linked_list.get(2).should == 4
    end
  end 

  describe "#insert_at_index" do
    it "should be able to insert at the beginning" do
      @linked_list.insert_at_index(0,10)
      @linked_list.insert_at_index(0,11)
      @linked_list.get(0).should == 11
    end

    it "should be able to insert in the middle" do
      @linked_list.insert_at_index(0,10)
      @linked_list.insert_at_index(1,11)
      @linked_list.insert_at_index(1,15)
      @linked_list.get(1).should == 15  
    end
    
    it "should return null for an invalid index" do
      @linked_list.insert_at_index(100,10).should == nil
    end
    
    it "should return null for a low invalid index" do
      @linked_list.insert_at_index(-1,10).should == nil
    end
  end

  describe "#print_list" do
    it "should print the list" do
      @linked_list.insert(10)
      @linked_list.insert(11)
      @linked_list.insert(12)
      @linked_list.print_list.should == ["10","11","12"]
    end 

    it "should return an empty array when list is empty" do
      @linked_list.print_list.should == []
    end
  end
end
