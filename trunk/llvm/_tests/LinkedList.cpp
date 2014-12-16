#include <iostream>

class LinkedList;

class Node {
	friend class LinkedList;

public:
	Node(void) : _value(0), _next(NULL), _prev(NULL) {}
	Node(int value) : _value(value), _next(NULL), _prev(NULL) {}

	int getValue() {
		return _value;
	}

	Node* getNext() {
		return _next;
	}

	Node* getPrev() {
		return _prev;
	}

private:
	void setValue(int value) {
		_value = value;
	}
	void setNext(Node* next) {
		_next = next;
	}
	void setPrev(Node* prev) {
		_prev = prev;
	}

private:
	int _value;
	Node* _next;
	Node* _prev;
};

class LinkedList {
private:
	Node* _head;
	Node* _tail;

public:
	LinkedList();
	~LinkedList();

	void pushBack(int value);
	void pushFront(int value);
	void popBack();
	void popFront();
	int front();
	int back();
	bool isEmpty();

	void displayNodes();

private:
	void destroyList();
};

LinkedList::LinkedList() {
	_head = new Node();
	_tail = new Node();
	_head->setNext(_tail);
	_tail->setPrev(_head);
}

LinkedList::~LinkedList() {
	destroyList();
}

void LinkedList::pushFront(int value) {
	Node* n = new Node(value);

	n->setNext(_head->getNext());
	n->getNext()->setPrev(n);
	n->setPrev(_head);
	_head->setNext(n);
 }

 int LinkedList::front() {
 	if(!isEmpty()) {
 		Node* n = _head->getNext();
 		return n->getValue();
 	} 	
 	return 0;
 } 

 void LinkedList::popFront() {
 	if(!isEmpty()) {
 		Node* n = _head->getNext();
 		Node* next = n->getNext();
 		next->setPrev(_head);
 		_head->setNext(next);
 		delete n;
 	}
 }

 void LinkedList::pushBack(int value) {
 	Node* n = new Node(value);

 	n->setPrev(_tail->getPrev());
 	n->getPrev()->setNext(n);
 	n->setNext(_tail);
 	_tail->setPrev(n);
}

int LinkedList::back() {
	if(!isEmpty()) {
		return _tail->getPrev()->getValue();
	}
	return 0;
}

void LinkedList::popBack() {
	if(!isEmpty()) {
		Node* n = _tail->getPrev();
		Node* prev = n->getPrev();
		prev->setNext(_tail);
		_tail->setPrev(prev);
		delete n;
	}
}

void LinkedList::destroyList() {
	while(!isEmpty()) {
		popFront();
	}
	delete _head; _head = NULL;
	delete _tail; _tail = NULL;
}

bool LinkedList::isEmpty() {
	return (_head->getNext() == _tail) && (_tail->getPrev() == _head);
}

void LinkedList::displayNodes() {
	for(Node* n = _head->getNext(); n != _tail; n = n->getNext()) {
		std::cout << n->getValue() << std::endl;
	}
}

int main() {

	LinkedList* linkedList = new LinkedList();

	std::cout << "isEmpty: " << linkedList->isEmpty() << std::endl;
	std::cout << "Push back:" << std::endl;
	for(int i = 1; i < 10; i ++) {
		linkedList->pushBack(i);
	}

	std::cout << "isEmpty: " << linkedList->isEmpty() << std::endl;
	std::cout << "displayNodes: " << std::endl;
	linkedList->displayNodes();

	std::cout << "Pop back:" << std::endl;
	while(!linkedList->isEmpty()) {
		std::cout << linkedList->back() << std::endl;
		linkedList->popBack();
	}
	std::cout << "isEmpty: " << linkedList->isEmpty() << std::endl;

	std::cout << "Push front:" << std::endl;
	for(int i = 11; i < 20; i++) {
		linkedList->pushFront(i);
	}
	std::cout << "isEmpty: " << linkedList->isEmpty() << std::endl;

	std::cout << "displayNodes: " << std::endl;
	linkedList->displayNodes();

	std::cout << "Pop front:" << std::endl;
	while(!linkedList->isEmpty()) {
		std::cout << linkedList->front() << std::endl;
		linkedList->popFront();
	}
	std::cout << "isEmpty: " << linkedList->isEmpty() << std::endl;


	return 0;
}

